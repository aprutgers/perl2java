package JavaGenerator;

use strict;
use Log;
use Data::Dumper;

our $SYMTAB;
our $CURRENTVAR;

sub new
{
	my $proto = shift;
	my %param  = @_;

	my $self = 
        {
		parser        => $param{'parser'},
	        lexer         => $param{'lexer'},
		perl_filename => $param{'perl_filename'},
		java_filename => $param{'java_filename'},
		java_classname=> $param{'java_classname'},
		java_package  => $param{'java_package'},
		perl_sublist  => ['print', 'exit', 'open', 'close','grep','md5_hex'],
		sublist       => [],
		imports       => [],
		variables     => [],
		currentsub    => undef,
		
	};

	bless $self,$proto;

	return $self;
}
# Internal Perl Subroutines like print, exit, open, close, grep
sub getPerlSubroutines
{
	my $self = shift;
	return $self->{perl_sublist};
}

sub getSubroutines
{
	my $self = shift;
	return $self->{sublist};
}

sub is_sub {

        my $self   = shift;
        my $sub    = shift;

	#Log::debug("is_sub sub='$sub'");

        foreach my $check (@{$self->getPerlSubroutines()}) {
           next if (!$check);
           return 1 if ($check eq $sub);
        }
        foreach my $check (@{$self->getSubroutines()}) {
           next if (!$check);
           return 1 if ($check eq $sub);
        }
        return 0;
}

sub addImport
{
	my $self = shift;
        my $m1   = lc(shift);
        my $m2   = lc(shift);

	Log::debug("addImport self=$self m1=$m1 m2=$m2");

        if ($m2) {
           push @{$self->{imports}},"$m1.$m2";
        } else {
           push @{$self->{imports}},$m2;
        }

	return '';
}

sub add_sub
{
        my $self = shift;
        my $sub  = shift;

        chomp($sub);
        Log::debug("add_sub sub='$sub'");
        push @{$self->{sublist}}, $sub;

	$self->{currentsub}=$sub;

        #Log::dumper($self->{sublist});
}

# reset scope for code outside subs
sub closure_sub
{
	my $self = shift;
	Log::debug("closure_sub");
	$self->{currentsub}='perl_module';
}

sub add_sub_code
{
	my $self = shift;
	my $code = shift;

	my $currentsub = $self->{currentsub}||'perl_module';

	# do not add the main call to the perl_module
	return if ($currentsub eq 'perl_module' && $code =~ /main/);
	Log::debug("add_sub_code currentsub=$currentsub");
	$self->{subcode}->{$currentsub} .= $code;
}


##
### semantic perl->java translation 
##

#
# LSTOP indirob listexpr /* map {...} @args or print $fh @args */

sub JV_map_call
{
	my $self = shift;
	my $context  = shift;
	my $lstop    = shift||'';
	my $indirob  = shift||'';
	my $listexpr = shift||'';

	
	my $param='';
	if ($context eq 'FUNC_indirob_expr') {
		$param="$indirob($listexpr)";
	}

	if ($context eq 'FUNC_optexpr') {
		$param=$listexpr;
	}

	# resolve "the value of a=$a" in strings
	if ($param =~ /\$/) {
	   $param =~ s/\$([A-z0-9_]+)/"\+$1\+\"/g;
	   Log::debug("RESOLVED param=$param");
	}

	Log::debug("JV_map_call $lstop param=$param");

	if ($lstop eq 'open') {
		my @tmp=split(',', $listexpr);
		my $filehandle = lc($tmp[0]);
		my $filespec   = $tmp[1];
		Log::debug("JV_map_call open filehandle=$filehandle filespec=$filespec");
		if ($filespec =~ /^"\>/) {
		   $filespec =~ s/^">/"/;
	           my $javaopen = qq|\t\tBufferedWriter  p2j_$filehandle = new BufferedWriter(new OutputStreamWriter(new FileOutputStream($filespec), "US-ASCII"));\n|;
		   return $javaopen;
		}
	}
	if ($lstop eq 'close') {
		my $filehandle = lc($listexpr);
		Log::debug("JV_map_call close filehandle=$filehandle");
	        my $javaclose  = qq|\t\tp2j_$filehandle.close();\n|;
		return $javaclose
	}


	if ($lstop eq 'print') {

	   # explicit STDERR or STDOUT
	   if ($param =~ /STDERR |STDOUT /) {
	      my $io=($param =~ /STDERR/ ? 'err' : 'out');
	      $param =~ s/STDERR |STDOUT //;
	      return qq|\t\tSystem.$io.print($param);\n|
	   }

	   # print(FILE param) 
	   my @tmp = split(' ', $listexpr);
	   my $perl_io=$tmp[0];
	   Log::debug("JV_map_call perl_io=$perl_io");
	   if ($perl_io !~ /^"/ && scalar(@tmp)>1) { # not a literal string so must be a file handle, previous opened
	       my $filehandle = lc($tmp[0]);
	       my $param = $tmp[1];
	       my $javaprint = qq|\t\tp2j_$filehandle.write($param);\n|;
	       return $javaprint;
	   }

	   # default
	   return qq|\t\tSystem.out.print($param);\n|

	}

	# default
	return qq|\t\t$lstop((Arrays.asList($param))); /* $context */\n|;

	

}

sub JV_GEN_call
{
	my $self     = shift;
	my $context  = shift;
	my $lstop    = shift||'';
	my $indirob  = shift||'';
	my $listexpr = shift||'';

	Log::debug("JV_GEN_call context=$context lstop=$lstop indirob=$indirob listexpr=$listexpr");

	my $javacode = $self->JV_map_call($context,$lstop,$indirob,$listexpr);

	$self->add_sub_code($javacode);

	return $javacode;

}

## My Vars

sub addMyVar
{
	my $self = shift;
	my $var  = shift;
	
	my $scope = $self->{currentsub}||'perl_module';
	Log::debug("addMyVar scope=$scope var=$var");
	my $hash = { name => $var, scope => $scope, type => 'String', value => '""' }; # TBD different types..., scope..
	push @{$self->{variables}}, $hash;
	$SYMTAB->{$var}=$hash;
	$CURRENTVAR=$var;

	return $var;
}

sub ASSIGNOP
{
	my $self = shift;
	my $lhs  = shift||$CURRENTVAR||''; # left hand side
	my $rhs  = shift||''; # right hand side

	Log::debug("ASSIGNOP lhs=$lhs rhs=$rhs");
	#Log::dumper($SYMTAB->{$lhs}) if ($lhs);
	$SYMTAB->{$lhs}->{value}=$rhs;

	return "$lhs = $rhs"; # javacode assigment

}

sub barestmt
{
	my $self = shift;
	my $barestmt = shift;
	
	Log::debug("barestmt=$barestmt\n");

	$self->add_sub_code($barestmt);

	return $barestmt;
}

# class generation

sub generateJavaClass
{
        my $self = shift;

	Log::debug("generateJavaClass...");

	if (!grep('main',@{$self->getSubroutines()})) {
		$self->add_sub('main');
	}


        my $javacode = '';

        # comment
        $javacode = qq{/* This code is generated from a perl module */\n};


        # package
        my $java_package = $self->{java_package};
        $javacode .= qq|package $java_package;\n\n| if ($java_package);

        # import
        my @javaimports = qw|java.io.BufferedWriter 
			     java.io.OutputStreamWriter 
                             java.io.FileOutputStream java.io.IOException 
                             java.io.FileNotFoundException 
                             java.nio.charset.Charset java.util.*
			     perl.cpan.DataDumper.Dumper
			     perl.internals.DigestMD5.md5_hex
			    |;

        foreach my $import (@javaimports) {
		my $static = ($import =~ /^perl/?'static ':'');
                $javacode .= "import $static" . $import . ";\n";

        }
        #foreach my $import (@{$self->{imports}}) {
                #$javacode .= "import " . $import . ";\n";
        #}

        # class
        my $java_classname = $self->{java_classname};
        $javacode .= qq|public class $java_classname {\n|;

        # global vars (ours, my)
	foreach my $var (@{$self->{variables}}) {
		Log::debug("global vars scope=".$var->{scope});
		next if ($var->{scope} ne 'perl_module');
		my $type  = $var->{type};
		my $name  = $var->{name};
		my $value = $var->{value};
		$javacode .= qq|\tstatic $type $name = $value;\n|;
	}

	# generate perl module level code (outside any sub)
	
	#if ($self->{subcode}->{perl_module}) {
	   my $sub = 'perl_module';
           my $throws = 'throws IOException,FileNotFoundException';
           $javacode .= qq|\tprivate static void ${sub}() ${throws}{\n|;
           $javacode .= $self->{subcode}->{$sub};
           $javacode .= qq|\t} /* end of method $sub */\n\n|;
	#}

        # methods (subs)
        foreach my $sub (@{$self->getSubroutines()})
        {

                my $formal_sub_params = 'List<String> p2j_args'; # need to come up w/ generic list / shift solution here
                my $throws = '';
		my $init   = '';
		if ($sub eq 'main') { # main specific
                   $formal_sub_params = 'String ARGV[]';
                   $throws = 'throws IOException,FileNotFoundException';
		   $init   = qq|\t\tperl_module();\n|; # generate call to execute perl module statements
	        }

                my $security = ($sub =~ /^_/) ? 'private' : 'public';
                $javacode .= qq|\t${security} static void ${sub}($formal_sub_params) ${throws}{\n|;
		$javacode .= $init if ($sub eq 'main');

		# parameters and local variables

		foreach my $var (@{$self->{variables}}) {
			Log::debug("local sub=$sub vars scope=".$var->{scope});
			next if ($var->{scope} ne $sub);
			my $type  = $var->{type};
			my $name  = $var->{name};
			my $value = $var->{value};

			$value = "p2j_args.listIterator().next();" if ($value eq 'shift');
			$javacode .= qq|\t\t$type $name = $value;\n|;
		}

		

                $javacode .= $self->{subcode}->{$sub};

                $javacode .= qq|\t} /* end of method $sub */\n\n|;
        }



        # end classs
        $javacode .= qq|} /* end class $java_classname */ \n|;

}


1;
