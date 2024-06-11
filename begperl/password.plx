#!/usr/bin/perl
#password.plx
use warnings;
use strict;

my $password = "secret";
print "Enter the password: ";
my $guess = <STDIN>;
chomp $guess;
if ($guess eq $password) {
    print "✅ Pass, friend 😁!\n";
} else {
    die "❌❌❌ Fail, enemy ☠️☠️☠️\n";
}