#!/usr/bin/perl
#sort3.plx
use warnings;
use strict;

my $numeric = 0;
my $input = shift;

if (defined $input) {
open INPUT, $input or die "Can't open $input: $!\n";
} else {
    *INPUT = *STDIN;
}

my $output = shift;

if (defined $output) {
    open OUTPUT, ">$output" or die "Can't open $output: $!\n";
} else {
    *OUTPUT = *STDOUT;
}

my @file = <INPUT>;
if ($numeric) {
    @file = sort { $a <=> $b } @file;
} else {
    @file = sort @file;
}

print OUTPUT @file;