#!/usr/bin/perl
#directory.plx
use warnings;
use strict;

print "Content of the current directory:\n";
opendir DH, "." or die "Failed to open current directory: $!";
while ($_ = readdir DH) {
    next if $_ eq "." or $_ eq "..";
    print $_, " " x (30 - length($_));
    print "d" if -d $_;
    print "r" if -r _;
    print "w" if -w _;
    print "x" if -x _;
    print "o" if -o _;
    print "\t";
    print -s _ if -r _;
    print "\n";
}