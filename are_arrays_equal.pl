#!/usr/bin/perl

use strict;
use warnings;

sub compare_arrays {
  my ($first, $second) = @_;
  no warnings;
  return 0 unless @$first == @$second;
  for (my $i = 0; $i < @$first; $i++) {
    return 0 if $first->[$i] ne $second->[$i];
  }
  return 1;
}

my @frogs = (1, 2, 3, 4, 5);
my @lemings = (1, 2, 3, 4, 5);

print compare_arrays(\@frogs, \@lemings);
print "\n";

