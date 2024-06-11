#!/usr/bin/perl
#until.plx
use warnings;
use strict;

my $countdown = 5;
until ($countdown-- == 0) {
    print "Countdown: $countdown\n";
    sleep 1;
}
