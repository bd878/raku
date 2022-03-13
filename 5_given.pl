#!/usr/bin/perl

use feature "switch";

print "Enter 'yes' or 'no':";
$response=<STDIN>;
chomp $response;

given ($response) {
  when ("yes") { print "You agree!\n"; }
  when ("no") { print "You do not agree\n"; }
  default { print "May be\n"; }
}