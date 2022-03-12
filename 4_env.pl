#!/usr/bin/perl

foreach $var (keys %ENV) {
  print "$var: $ENV{$var}\n";
}