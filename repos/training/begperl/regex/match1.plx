#!/usr/bin/perl
#match1.plx
use warnings;
use strict;

my $found = 0;
$_ = "Nobody wants to hurt you... 'cept, I do hurt people sometimes, Case.";

if (/people/) {
    print "Hooray! Found the word 'people'!\n";
}