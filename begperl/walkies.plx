#!/usr/bin/perl
#walkies.plx
use warnings;
use strict;

print "What's the weather like outsid? ";
my $weather = <STDIN>;
print "How hot is it, in degrees? ";
my $temperature = <STDIN>;
print "And hom many emails left to reply to? ";
my $work = <STDIN>;
chomp($weather, $temperature);

if ($weather eq "snowing") {
    print "Let's go for a walk in the snow!\n";
} elsif ($temperature > 30) {
    print "It's too hot for a walk, let's go for a swim!\n";
} elsif ($work > 10) {
    print "Let's stay in and reply to emails.\n";
} else {
    print "Let's go for a walk!\n";
}

