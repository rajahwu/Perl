#!/usr/bin/perl
#guessnum.plx
use warnings;
use strict;

my $target = 12;
print "Guess the number: ";
print "Enter your guess: ";
my $guess = <STDIN>;

if ($guess == $target) {
    print "That's it! You guessed correctly!\n";
    exit;
}
if ($guess > $target) {
    print "Your number is bigger than my number.\n";
    exit;
}
if ($guess < $target) {
    print "Your number is less than my number.\n";
    exit;
}
