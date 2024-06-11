#!/usr/bin/perl
#sdrawkcab2.plx
use warnings;
use strict;
print "Please enter a phrase to translate: ";

do {
    $_ = <STDIN>;
    chomp;

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
    print "$adrawkcab\n";

    sleep 1;
    print "Please enter a phrase to translate: ";

} while ($_);
print "!enod IIA\n";
