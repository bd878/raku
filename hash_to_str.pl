#!/usr/bin/perl

use strict;
use warnings;

use JSON;

my $model = {
  en => "Boeing AH-64 Apache",
  ru => "Боинг AH-64 Апач"
};

print to_json $model;
