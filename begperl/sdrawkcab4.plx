#!/usr/bin/perl
#sdrawkcab1.plx
use warnings;
use strict;
print "Please enter a phrase to translate: ";

while (<STDIN>) {
    chomp;
    last unless $_;

    print "Please wait translating...\n";
    sleep 1;
    print "🕒\n";
    sleep 1;
    print "🕒🕑\n";
    sleep 1;
    print "🕒🕑🕛\n";
    sleep 1;

    my $adrawkcab = reverse $_;
    print "The reverse of that is: ";
    sleep 1;
    print "$adrawkcab\n";

    sleep 1;
    print "Please enter a phrase to translate: ";
}
