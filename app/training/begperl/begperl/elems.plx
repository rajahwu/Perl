#!/usr/bin/perl
#elems.plx
use warnings;
use strict;

my @array = qw(alpha bravo charlie delta echo foxtrot);

print "Scalar value    :", scalar @array, "\n";
print "Highest element :", $#array, "\n";