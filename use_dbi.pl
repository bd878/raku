#!/usr/bin/perl

use strict;
use warnings;

use DBI;

print "Installed DBI drivers:\n";
my %drivers = DBI->installed_drivers;
while (my ($key, $value) = each (%drivers)) {
  print "$key = $value\n";
}

print "Available drivers:\n";
my @driver_names = DBI->available_drivers;
foreach my $name (@driver_names) {
  print "$name\n"
}