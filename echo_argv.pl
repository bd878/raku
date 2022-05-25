#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;

print "length of @ARGV: $(scalar @ARGV)";
print "\n";
print @ARGV;
print "\n";
print Dumper(\@ARGV);
print "\n";
