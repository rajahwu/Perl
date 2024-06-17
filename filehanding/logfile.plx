#!/usr/bin/perl
#logfile.plx
use warnings;
use strict;

my $logging = "file"; # Change this to "file" to log to a file!

if ($logging eq "file") {
    open LOG, ">output.log" or die $!;
    select LOG;
}

print "Program started: ", scalar localtime, "\n";
sleep 30;
print "Program ended: ", scalar localtime, "\n";

select STDOUT;