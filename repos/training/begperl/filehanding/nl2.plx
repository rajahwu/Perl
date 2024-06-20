#!/usr/bin/perl
#nl.plx
use warnings;
use strict;

my $lineno = 1;

while (<>) {
    print $lineno++;
    print ": $_";
}

print "\n";
