#!/usr/bin/perl
#looploop3plx
use warnings;
use strict;

my @getout = qw(exit quit leave stop finish);

OUTER: while (<STDIN>) {
    chomp;
    INNER: for my $check (@getout) {
        last OUTER if $check eq $_;
    }
    print "Hey, you said $_\n";
}
