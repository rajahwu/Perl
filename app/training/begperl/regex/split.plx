#!/usr/bin/perl
#split.plx
use warnings;
use strict;

my $passwd = "kate:x:10018:10020::/home/kate:/bin/bash";
my @fields = split /:/, $passwd;
print "Login name : $fields[0]\n";
print "User ID : $fields[2]\n";
print "Home directory : $fields[5]\n";
