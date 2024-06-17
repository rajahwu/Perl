#!/usr/bin/perl
#tail2.plx
use warnings;
use strict;

open FILE, "gettysburg.txt" or die $!;
my @speech =<FILE>;

print "Last five line:\n", @speech[-5 ... -1], "\n";
