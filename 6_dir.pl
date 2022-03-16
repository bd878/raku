#!/usr/bin/perl

print "Enter file or directory name: ";
$name=<STDIN>;

chomp $name;
if (-d $name) {
  print "$name is directory\n";
} else {
  print "$name is file\n";
}