#!/usr/bin/perl
#glob.plx
use warnings;
use strict;

my @files = glob("*l");
print "Matched *l : @files\n";