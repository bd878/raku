#!/usr/bin/perl

$total=10.5;
undef($total);
if (defined($total)) {
  print "total is defined\n";
} else {
  print "total is not defined\n";
}