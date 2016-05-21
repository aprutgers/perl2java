#GRAMPROG

use strict;
use Data::Dumper;
use Digest::MD5 qw(md5 md5_hex md5_base64);

sub test
{

	my $value = shift;
	print($value);
	print("\n");
}

sub main
{

	my $string  = "Hello world\n";
	my $integer = "1";

	print($string);
	print(Dumper($integer));

	$string = md5_hex("test");

	print(STDERR "stderr $integer");
	print(STDOUT "stdout\n");

	print("a string\n");

	open(FILE,">out");
	print(FILE "data");
	close(FILE);

	test("100");
}

main();
