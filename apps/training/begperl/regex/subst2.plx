#!/usr/bin/perl
#subst2.plx
use warnings;
use strict;

$_ = "there are two major products that come out of Berkely: LSD and UNIX";
# Jeremy Anderson

s/(\w+)\s+(\w+)/$2 $1/g;
print $_,"\n";