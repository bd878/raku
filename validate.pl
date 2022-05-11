#!/usr/bin/perl

use strict;
use warnings;

sub validateCode {
  my $code = shift;
  return sub {
    unless (length $code == 3) {
      return "Code be of length be 3"
    } else {
      return 0;
    }
  }
}

sub runValidators {
  my $validators = shift;
  my $error = 0;

  for (my $i = 0; ($i < scalar @$validators) && not $error; $i++) {
    my $validator = @{$validators}[$i];

    $error = &$validator();
  }

  return $error;
}

my $code = $ARGV[0];

my @validators = (validateCode($code));

unless (my $error = runValidators(\@validators)) {
  print "no error\n";
} else {
  print "$error\n";
}

