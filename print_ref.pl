#!/usr/bin/perl

use strict;
use warnings;

sub print_arr {
  my $arr_ref = shift;
  my $index = 0;
  my $sub_ref = @{$arr_ref}[$index];

  print &$sub_ref("Shanghai");
}

my $handler = sub { my $val = shift; print "$val\n"; };
my @arr = ($handler);

print_arr(\@arr);
