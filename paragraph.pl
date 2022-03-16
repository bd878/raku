#!/usr/bin/perl

$paragraph;
print "Enter a sentence: ";
while (<>) {
  $paragraph = $paragraph . " " . $_;
  print "Enter a sentence: ";
}
print $paragraph . "\n";