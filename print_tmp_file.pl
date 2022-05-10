#!/usr/bin/perl

use strict;
use warnings;

use File::Temp qw/ tempfile /;

my ($fh, $filename) = tempfile();

print $fh "Hello, world\n";
print "Temp filename is: $filename\n";
