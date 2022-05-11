#!/usr/bin/perl

use strict;
use warnings;

my %table;

while (<>) {
  chomp;
  my ($city, $country) = split /, /;
  $table{$country} = [] unless exists $table{$country};
  push @{$table{$country}}, $city;
}

for my $country (sort keys %table) {
  print "$country: ";
  my @cities = @{$table{$country}};
  print join ', ', sort @cities;
  print ".\n";
}
