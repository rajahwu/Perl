#!/usr/bin/perl
#match2.plx
use warnings;
use strict;

my $found = 0;
$_ = "Nobody wants to hurt you... 'cept, I do hurt people sometimes, Case.";

if (/I do/) {
    print "'I do' is in that string.\n";
}

if (/sometimes Case/) {
    print "'sometimes Case' is in that string.\n";
}