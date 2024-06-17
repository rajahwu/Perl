#!/usr/bin/perl
#seconds1.plx
use warnings;
use strict;

my ($hours, $minutes, $seconds) = sec2hms(3723);
print "3723 seconds is $hours hours, $minutes minutes, and $seconds seconds.\n";

sub sec2hms {
  my ($h,$m);
  my $seconds = shift;
  $h = int($seconds/(60*60)); $seconds %= 60*60;
  $m = int($seconds/60); $seconds %= 60;
  ($h, $m, $seconds);
}