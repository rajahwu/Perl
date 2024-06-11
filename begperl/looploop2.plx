#!/usr/bin/perl
#looploop2.plx
use warnings;
use strict;

my @getout = qw(quit leave stop finish);

OUTER: while (<STDIN>) {
    chomp;
    INNER: for my $check (@getout) {
        print "Testing $check against $_\n";
        last if $check eq $_;
        print "Well, it wasn't $check\n";
    }
    print "Hey, you said $_\n";
}
