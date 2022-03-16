#!/usr/bin/perl

if (!(-r "/etc/lostfile")) {
  die "can't find file";
}

print "go on";
