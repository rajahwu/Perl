#!/usr/bin/perl
#forlast.plx
use warnings;
use strict;

my $stopnow = "STOP THIS NOW";
my @array = ( "red", "blue", "green", "yellow", $stopnow, "purple", "orange" );

for (@array) {
    last if $_ eq $stopnow;
    print "$_\n";
}


