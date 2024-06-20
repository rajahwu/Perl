#!/usr/bin/perl
#nl.plx
use warnings;
use strict;

my $filename = "nlexample.txt";

open FILE, "$filename" or die $!;
my $lineno = 1;

while (<FILE>) {
    print $lineno++;
    print ": $_";
}

print "\n";
