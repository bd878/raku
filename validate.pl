#!/usr/bin/perl

use strict;
use warnings;

use Validators qw(run_validators validate_code);

my $code = $ARGV[0];

my @validators = (validate_code($code));

unless (my $error = run_validators(\@validators)) {
  print "no error\n";
} else {
  print "$error\n";
}
