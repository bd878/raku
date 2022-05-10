#!/usr/bin/perl

use strict;
use warnings;

use JSON;

my $data = "{ \"en\": \"boeing\", \"ru\": \"боинг\" }";
my @parsed = from_json $data;

for ( my $i = 0; $i < @parsed; $i++ ) {
  print "value $i is: $parsed[$i]";
}

# print "en: $parsed{'en'}\n";
# print "ru: $parsed{'ru'}\n";

1;
