#!/usr/bin/perl

use strict;
use warnings;

use JSON::PP;

my %data = (
  list => []
);

my @cities = qw(Singapore Shanghai Beijing Moscow Berlin Rome Stockholm);

for my $line (@cities) {
  push @{$data{'list'}}, $line;
}

print encode_json \%data;
print "\n";
