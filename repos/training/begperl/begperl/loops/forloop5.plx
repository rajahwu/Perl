#!/usr/bin/perl
#forloop5.plx
use warnings;
use strict;

my @array = (1 .. 10);
print "Array before: @array\n";
foreach (@array) {
    $_++;
    #   changes made to the iterator
    #   whether it be defined by it's
    #   alias [$_] or
    #   any other variable [ my <variable_name>]
    #   will affect the original array
}

print "Array is now: @array\n";
