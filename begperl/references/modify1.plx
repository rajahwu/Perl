#!/usr/bin/perl
#modify1.plx
use warnings;
use strict;

my @band = qw(Crosby Stills Nash Young);
my $band_ref = \@band;
print "Band members before: @band\n";
pop @{$band_ref};
print "Band members after: @band\n";