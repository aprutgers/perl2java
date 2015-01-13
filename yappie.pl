use strict;

use Parse::Lex;
use Parse::Yapp;
use PerlParser;
use JavaGenerator;
use Data::Dumper;
use Log;

# Bit Value    Outputs
#    0x01         Token reading (useful for Lexer debugging)
#    0x02         States information
#    0x04         Driver actions (shifts, reduces, accept...)
#    0x08         Parse Stack dump
#    0x10         Error Recovery tracing

#use constant DEBUG => 0xFF;
use constant DEBUG => 0x0;

# Lexicon

our $lexer = undef;

our @token_injects = ();
our @value_injects = ();

our @token = (
          qw(
	     GRAMPROG #GRAMPROG
	     GRAMSTMTSEQ #STMTSEQ

	     USE      use
	     SUB      sub
	     MY	      my

	     ASSIGNOP	=
             ADDOP    [-+]
             LEFTP    [\(]
             RIGHTP   [\)]
	     SPACE    [\s]
	     WORD     [A-z0-9_\>\<\"][A-z0-9_\>\<\"\$\s]*
	     SEMICOL  [\;]
	     PACKSEP  [\:\:]
	     CURLYBRACKOPEN  [\{]
	     CURLYBRACKCLOSE [\}]
	     COMMA	,
	     DOLLAR	\$
	     AMP	\&
	     AT		\@
	     PCT	\%
             
            ),
          qw(WORD),   [qw(" (?:[^"]+|"")* ")],
          qw(ERROR  .*), sub {
            die qq!can\'t analyze: "$_[1]"!;
          }
         );



sub initialize_lexer {

	my $file = shift;
	#Parse::Lex->trace;  # Class method
        $lexer = Parse::Lex->new(@token);
	$lexer->skip("\n");
	open(FILE,"<$file");
        $lexer->from(\*FILE);
	return $lexer;
}

sub lexer_sub {

	my $parser = shift; # yapp parser

	my $lexer_token = undef;

	my $token  = undef;
	my $value  = undef;

	# allow injects
 	if (@token_injects) {
	   $token=shift @token_injects;
	   $value=shift @value_injects;
	} else {
	   $lexer_token = $lexer->next();
	   $token = $lexer_token->name();
	   $value = $lexer_token->text();
	   while ($token eq 'SPACE' || $token eq 'PACKSEP' || $token eq 'EQ') {
	      $lexer_token = $lexer->next();
	      $token = $lexer_token->name();
	      $value = $lexer_token->text();
	   }
	}

	my $buffer=$lexer->buffer();
        

	# literal stuff
	return '{' if $token eq 'CURLYBRACKOPEN';
	return '}' if $token eq 'CURLYBRACKCLOSE';
	return '(' if $token eq 'LEFTP';
	return ')' if $token eq 'RIGHTP';
	return ';' if $token eq 'SEMICOL';
	return ',' if $token eq 'COMMA';
	return '$' if $token eq 'DOLLAR';
	return '&' if $token eq 'AMP';
	return '@' if $token eq 'AT';
	return '%' if $token eq 'PCT';

	# WORD upgrade to FUNC or UNIOP
	my $is_sub=$parser->{_generator}->is_sub($value);
	$token = 'FUNC'  if ($is_sub && $buffer =~ /\(/);
	$token = 'UNIOP' if ($is_sub && $buffer !~ /\(/);

	#print "lexer_sub token=$token value='$value' is_sub=$is_sub buffer='$buffer'\n";
	print "lexer_sub token=$token value='$value' is_sub=$is_sub\n";

	if ($token eq 'EOI') {
		return undef;
	}

	if ($token eq 'USE' && $buffer =~/strict/) { # use strict
		print "** Inject WORD\n";
		push @token_injects,'WORD'; # its a strange perl grammar with use WORD WORD
		push @value_injects, 'inject';
	}

	return ($token,$value);

}

sub error_sub {

	my $parser = shift;
	if ($parser->YYCurtok ne 'EOI') {
	   warn "YAPP PARSE Error: found ", $parser->YYCurtok, " and expecting one of ", join(" or ",$parser->YYExpect);
	   exit;
	}
}

#
# fieldname -> Fieldname
#
sub uc1
{
   my $name = shift;
   my @chars = split('',$name);
   $chars[0] = uc($chars[0]);
   return join('',@chars);
}


sub get_classname
{
	my $name = shift;
	
	$name =~ s/\.pl$//g;
	$name =~ s/\.pm$//g;

	return uc1($name);
}

sub main 
{

   my $perl_filename  = $ARGV[0];
   my $java_classname = get_classname($perl_filename);
   my $java_filename  = $java_classname . '.java';

   my $lexer     = initialize_lexer($perl_filename);
   my $parser    = new PerlParser();
   my $generator = new JavaGenerator(lexer           => $lexer, 
	                             parser          => $parser, 
                                     perl_filename   => $perl_filename,
                                     java_filename   => $java_filename, 
                                     java_classname  => $java_classname);

   $parser->{_generator}=$generator;

   my $value=$parser->YYParse(yydebug => DEBUG, yylex => \&lexer_sub, yyerror => \&error_sub);

   print "value=$value\n";

   my $javacode = $generator->generateJavaClass();

   open(JAVA,">$java_filename");
   print JAVA $javacode;
   close(JAVA);

   Log::info("generated JAVA file $java_filename");

}

main();
