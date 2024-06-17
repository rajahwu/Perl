#!/usr/bin/perl
#sort.plx
use warnings;
use strict;

my $input = shift;
my $output = shift;
open INPUT, $input or die "Can't open $input: $!";
open OUTPUT, ">$output" or die "Can't open $output: $!";

my @file = <INPUT>;
@file = sort @file;

print OUTPUT @file;