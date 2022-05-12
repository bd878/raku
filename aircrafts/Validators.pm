#!/usr/bin/perl

package Validators;

use strict;
use warnings;

use Exporter 'import';

sub validate_code {
  my $code = shift;
  return sub {
    return "Code be of length 3" unless length $code == 3;
    return 0;
  }
}

sub run_validators {
  my $validators = shift;
  my $error = 0;

  for (my $i = 0; ($i < scalar @$validators) and not $error; $i++) {
    my $validator = @{$validators}[$i];
    $error = &$validator();
  }

  return $error;
}

our @EXPORT_OK = qw(validate_code run_validators);

1;
