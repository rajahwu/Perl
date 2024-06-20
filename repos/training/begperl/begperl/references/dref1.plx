#!/usr/bin/perl
#dref1.plx
use warnings;
use strict;

my @array = (1, 2, 3, 4, 5);
my $array_ref = \@array;

print "This is our dererenced array: @{$array_ref}\n";
for (@{$array_ref}) {
    print "Element: $_\n";
}
print "The highest element is number $#{$array_ref}\n";
print "This is what our reference looks like: $array_ref\n";