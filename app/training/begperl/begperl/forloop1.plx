#!/usr/bin/perl
#forloop1.plx
use warnings;
use strict;

my @array = qw(America Asia Europe Africa Australia);
my $element;
for $element (@array) {
    print "$element\n";
}