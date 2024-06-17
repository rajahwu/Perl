#!/usr/bin/perl
#hello.plx
use warnings;
use strict;

sub version {
    print "Beginning Perl \"Hello World.\" version 2.0\n";
}

my $option = shift;
version if $option eq "-v" or $option eq "--version";
print "Hello, World!\n";