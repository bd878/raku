#!/usr/bin/perl

use strict;
use warnings;

sub start {
  my $key = shift;
  return "empty" unless defined $key;

  return "-n" if $key eq "-n";
  return "n" if $key =~ /[0-9]+/g;
  return "dir";
}

my $dir;
my $n;

my %routes = (
  # TODO: switch/select with start
  "-n" => sub { my $val = shift; return "empty" unless defined $val; return "n" if $val eq "-n"; if ($val =~ /[0-9]+/g) { $n = $val; return "exit"; }; },
  "n" => sub { $n = shift; $n = 5 unless defined $n; $dir = "." unless defined $dir; return "exit"; },
  "dir" => sub { $dir = shift; return "-n"; },
  "empty" => sub { $dir = "." unless defined $dir; $n = 5 unless defined $n; return "exit"; },
);

my $step;
for (
  my $i = 0, my $all_args_consumed = 0;
  not $all_args_consumed;
  $i++
) {
  my $arg = $ARGV[$i];

  $step = start($arg) unless defined $step;
  $step = $routes{$step}->($arg);

  if ($step eq "exit") {
    $all_args_consumed = 1;
  }
}

print "dir: $dir\n";
print "n: $n\n";
