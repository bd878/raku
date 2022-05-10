#!/usr/bin/perl

use strict;
use warnings;

use JSON;

my $model = {
  en => "Boeing AH-64 Apache",
  ru => "Боинг AH-64 Апач"
};

my $result = to_json $model;
my $parsed = from_json $result;
# my $elements_count = scalar(@parsed);
print "$parsed->{'ru'}\n";

my $model_t = {
  en => $parsed->{'en'},
  ru => $parsed->{'ru'}
};

print "$model_t->{'en'}\n";
# foreach my $value (@parsed) {
#   print "value: $value\n";
# }
