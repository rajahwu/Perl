# Perl Training

Welcome to your Perl training repository! This repository contains resources, examples, and exercises to help you learn Perl programming.

## Getting Started

### Installation

- **Windows**: Download and install [Strawberry Perl](http://strawberryperl.com/).
- **Mac/Linux**: Perl is usually pre-installed. Verify by running `perl -v` in your terminal.

### Learning Resources

- **Books**:
  - *"Learning Perl"* by Randal L. Schwartz, brian d foy, and Tom Phoenix
  - *"Intermediate Perl"* by Randal L. Schwartz, brian d foy, and Tom Phoenix
- **Online Tutorials**:
  - [Perl documentation (perldoc)](https://perldoc.perl.org/)
  - [Learn Perl in about 2 hours 30 minutes](https://qntm.org/files/perl/perl.html)
  - [Perl Tutorials by Perl Maven](https://perlmaven.com/perl-tutorial)

## Basic Syntax and Concepts

### Hello World

```perl
print "Hello, World!\n";
Variables
Scalars: $variable = 42;
Arrays: @array = (1, 2, 3);
Hashes: %hash = ('key1' => 'value1', 'key2' => 'value2');
```

### Control Structures

```perl
if ($condition) {
    # code
} elsif ($other_condition) {
    # code
} else {
    # code
}

for (my $i = 0; $i < 10; $i++) {
    print "$i\n";
}

while ($condition) {
    # code
}
```

### Regular Expressions

```perl
if ($string =~ /pattern/) {
    print "Matched!\n";
}
```

### File Handling

#### Reading from a File

```perl
open(my $fh, '<', 'filename.txt') or die "Could not open file: $!";
while (my $line = <$fh>) {
    print $line;
}
close($fh);
```

#### Writing to a File

```perl
open(my $fh, '>', 'output.txt') or die "Could not open file: $!";
print $fh "Some text\n";
close($fh);
```

## CPAN (Comprehensive Perl Archive Network)

CPAN is a repository of over 25,000 open-source Perl modules. You can install modules using cpan:

```sh
cpan Some::Module
```

Popular modules include DBI for database interaction, `LWP::UserAgent` for web requests, and `Moo` for object-oriented programming.

## Best Practices

Use strict and warnings pragmas to catch common mistakes:

```perl
Copy code
use strict;
use warnings;
```

Write modular code using packages and modules:

```perl
Copy code
package MyModule;
use Exporter 'import';
our @EXPORT_OK = ('some_function');

sub some_function {
    # code
}
1;
```

## Community and Support

- PerlMonks: A community dedicated to everything Perl. PerlMonks
- Stack Overflow: Ask questions and find answers tagged with perl.

## Practice

- Coding Challenges: Sites like HackerRank, Exercism, and LeetCode have coding challenges to practice Perl.

## Example Script

Here's a simple script that reads a file, processes each line, and writes the output to another file:

```perl
use strict;
use warnings;

# Open input file
open(my $in, '<', 'input.txt') or die "Could not open input file: $!";
# Open output file
open(my $out, '>', 'output.txt') or die "Could not open output file: $!";

# Process each line
while (my $line = <$in>) {
    chomp $line;
    $line =~ s/foo/bar/g; # Replace 'foo' with 'bar'
    print $out "$line\n";
}

# Close files
close($in);
close($out);

print "Processing complete!\n";
```
