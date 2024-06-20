#!/usr/bin/perl
#sdrawkcab2.plx
use warnings;
use strict;
print "Please enter a phrase to translate: ";

my $stopnow = 0;
until ($stopnow) {
    $_ = <STDIN>;
    chomp;
    
if ($_) {
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
    } else {
        $stopnow = 1 if !$_;
    }
}

print "!enod IIA\n";
