#!/usr/bin/perl
# headline.plx
use warnings;
use strict;

open my $lynx, "-|", "lynx -source http://www.perl.com/" or die "Can't open lynx: $!";

my $headline;

# Loop through the lines of the HTML source
while (my $line = <$lynx>) {
    # Check if the line contains the headline tag
    if ($line =~ m|<h2 class="blog-post-title">(.*?)</h2>|i) {
        $headline = $1;
        last; # Exit loop after finding the first headline
    }
}

close $lynx;

if (defined $headline) {
    print "Today's www.perl.com headline is: $headline\n";
} else {
    print "Headline not found\n";
}
