#!/usr/bin/perl

package Demo::TestAddAircraft;

use strict;
use warnings;

use JSON::PP;
use constant IOBUFSIZE => 8192; # random

sub handler {
  my $r = shift;

  $r->content_type('text/plain');

  $r->read(my $data, IOBUFSIZE);
  my $parsed = decode_json $data;

  my $model = {
    code => $parsed->{'code'},
    en => $parsed->{'en'},
    ru => $parsed->{'ru'},
    range => $parsed->{'range'}
  };

  print encode_json $model;

  return Apache2::Const::OK;
}

1;
