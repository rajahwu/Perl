# Regular Expressions in Perl

Welcome to the Regular Expressions (regex) section of your Perl training repository. This directory contains examples and scripts to help you understand and master regex in Perl. Regular expressions are a powerful feature of Perl, allowing you to match, search, and manipulate text with precision and flexibility.

## Contents

This section covers regex in six parts:

1. **Basic Patterns**
2. **Special Characters**
3. **Quantifiers, Anchors, and Memorizing Patterns**
4. **Backtracking**
5. **Simple Pitfalls**

### Scripts

- **Basic Patterns**:
  - `match1.plx`: Introduction to basic regex patterns and matching text.
  - `match2.plx`: More examples of basic pattern matching.

- **Special Characters**:
  - `match3.plx`: Using special characters in regex.
  - `match4.plx`: Advanced use of special characters for pattern matching.

- **Quantifiers, Anchors, and Memorizing Patterns**:
  - `nomatch.plx`: Demonstrates the use of quantifiers, anchors, and capturing groups.

## Overview

### 1. Basic Patterns

Learn the simplest forms of regex patterns, which include literal characters and simple pattern matches.

### 2. Special Characters

Understand how to use special characters like `\d` for digits, `\w` for word characters, and `\s` for whitespace, among others.

### 3. Quantifiers, Anchors, and Memorizing Patterns

Explore how to use quantifiers (`*`, `+`, `?`, `{}`), anchors (`^`, `$`), and capturing groups (`()`) to create more complex and powerful regex.

### 4. Backtracking

Understand how Perl handles backtracking when matching regex patterns and how you can control this behavior to optimize your patterns.

### 5. Simple Pitfalls

Learn about common mistakes and pitfalls when using regex and how to avoid them.

## Example Script

Here's a simple example of using regex in a Perl script:

```perl
use strict;
use warnings;

my $string = "The quick brown fox jumps over the lazy dog";
if ($string =~ /quick/) {
    print "Matched 'quick'!\n";
} else {
    print "No match for 'quick'.\n";
}

# Using capturing groups
if ($string =~ /(quick) (brown)/) {
    print "Matched '$1' and '$2'!\n";
}
