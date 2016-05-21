package Log;

use strict;

use File::Basename;
use Data::Dumper;
use IO;

sub timestamp {
    my @time = localtime();
    return sprintf("%d-%02d-%02d %02d:%02d:%02d", $time[5]+1900, $time[4]+1, $time[3], $time[2], $time[1], $time[0]);
}

#############
## logging ##
#############

sub debug
{
    my $message = shift;
    my $time = timestamp();
    chomp($message);
    my $call = sprintf("%s:%s", basename((caller())[1]), (caller())[2]);
    foreach my $line (split/\n/,$message) {
	print STDERR "[$time:$call] DEBUG: $line\n";
	flush STDERR;
    }
    return;
}

sub error
{
    my $message = shift;
    my $time = timestamp();
    chomp($message);
    my $call = sprintf("%s:%s", basename((caller())[1]), (caller())[2]);
    foreach my $line (split/\n/,$message) {
	print STDERR "[$time:$call] ERROR: $line\n";
	flush STDERR;
    }
    return;
}

sub warn
{
    my $message = shift;
    my $time = timestamp();
    chomp($message);
    my $call = sprintf("%s:%s", basename((caller())[1]), (caller())[2]);
    foreach my $line (split/\n/,$message) {
	print STDERR "[$time:$call] WARN: $line\n";
	flush STDERR;
    }
    return;
}

sub info
{
    my $message = shift;
    my $time = timestamp();
    chomp($message);
    my $call = sprintf("%s:%s", basename((caller())[1]), (caller())[2]);
    foreach my $line (split/\n/,$message) {
	print STDERR "[$time:$call] INFO: $line\n";
	flush STDERR;
    }
    return;
}


1;

