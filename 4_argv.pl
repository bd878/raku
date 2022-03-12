#!/usr/bin/perl

if (exists $ARGV[1]) {
  $total=$ARGV[0] + $ARGV[1];
  if (exists $ARGV[2]) {
    $total += $ARGV[2];
    print "argv1 + argv2: $total\n";
  } else {
    print "argv1: $total\n";
  }
} else {
  print "Usage: $0 arg1 arg2\n";
}