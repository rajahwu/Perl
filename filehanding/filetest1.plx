#!/usr/bin/perl
#filetest1.plx
use warnings;
use strict;

my $target;
while (1) {
  print "What file should I write one? ";
    chomp($target = <STDIN>);
    if(-d $target) {
        print "No, $target is a directory.\n";
        next;
    }
    if (-e $target) {
        print "That file exists. What should I do?\n";
        print "(Enter 'r' to write to a different name, ";
        print "'o' to overwrite or\n";
        print "'b' to back upt to $target.old)\n";
        my $choice = <STDIN>;
        chomp $choice;
        if ($choice eq "r") {
            next;
        } elsif ($choice eq "o") {
            unless (-o $target) {
                print "Can't overwrite $target, it's not yours.\n";
                next;
            }
        } elsif ($choice eq "b") {
            if ( rename($target, "$target.old")) {
                print "Okay, moved $target to $target.old\n";
                next;
            } else {
                print "Couldn't rename $target to $target.old: $!\n";
                next;
            }
        } else {
            print "I don't understand $choice.\n";
            next;
        }
    }
    last if open OUTPUT, ">$target";
    print "Can't write to $target: $!\n";
}
print OUTPUT "Congratulations.\n";
print "Wrote to $target.\n";