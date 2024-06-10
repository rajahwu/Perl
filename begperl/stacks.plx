#!/usr/bin/perl
#stacks.plx
use warnings;
use strict;

my $hand;
my @pileofpaper = ("letter", "newspaper", "gas bill", "notepad");

print "Here's what's on the desk: @pileofpaper\n";

print "You pick up something of the top of the pile \n";
$hand = pop @pileofpaper;
print "You picked up a $hand. \n";

print "Here's what's left on the desk: @pileofpaper\n";

print "You pick up the next thing, and throw it away.\n";
pop @pileofpaper;

print "You put the $hand back on the pile.\n";
push @pileofpaper, $hand;

print "You aslo put a leaflet and an back statement on the pile.\n";
push @pileofpaper, "leaflet", "bank statement";

print "Here's what's on the desk now: @pileofpaper\n";