#!/usr/bin/perl
#copy.plx
use warnings;
use strict;

my $source = shift @ARGV;
my $destination = shift @ARGV;

open IN, $source or die "Cant't read source file $source; $!\n";
open OUT, ">$destination" or die "Can't write on file $destination: $!\n";

while (<IN>) {
print OUT $_;
    }