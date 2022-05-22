#!/usr/bin/perl

use Cwd qw(abs_path getcwd);

use strict;
use warnings;

my $path = $ARGV[0] || getcwd();
my $abs_path = abs_path($path);
print "$path\n";
print "$abs_path\n";

1;
