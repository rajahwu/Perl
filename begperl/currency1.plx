#!/usr/bin/perl
#currency1.plx
use warnings;
use strict;
print "Currency converter\n\nPlease enter the exchange rate: ";
my $yen = <STDIN>;
print "Please enter three amounts in Yen\nAmount 1: \n";
my $amount1 = <STDIN>;
print "Amount 2: \n";
my $amount2 = <STDIN>;
print "Amount 3: \n";
my $amount3 = <STDIN>;
print "1: ${amount1} Yen is ", ($amount1/$yen), " pounds\n";
print "2: ${amount2} Yen is ",   ($amount2/$yen), " pounds\n";
print "3: ${amount3} Yen is ", ($amount3/$yen), " pounds\n";