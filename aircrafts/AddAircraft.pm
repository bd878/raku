#!/usr/bin/perl

package Demo::AddAircraft;

use strict;
use warnings;

use JSON::PP;
use DBI;
use DBD::Pg qw(:pg_types);

use constant IOBUFSIZE => 8192; # random

sub validateCode {
  my $code = shift;
  return sub {
    unless (length $code == 3) {
      return "Code be of length be 3"
    } else {
      return 0;
    }
  }
}

sub runValidators {
  my $validators = shift;
  my $error = 0;

  for (my $i = 0; ($i < scalar @$validators) && not $error; $i++) {
    my $validator = @{$validators}[$i];
    $error = &$validator();
  }

  return $error;
}

sub handler {
  my $r = shift;

  $r->content_type('text/plain');

  my $dbh = DBI->connect("dbi:Pg:database=demo;host=127.0.0.1;port=5432", "admin", "admin",
    { RaiseError => 1, AutoCommit => 1, pg_enable_utf8 => 0 });

  my $sth = $dbh->prepare("INSERT INTO aircrafts_data (aircraft_code, model, range) VALUES (?, ?, ?)");

  $r->read(my $data, IOBUFSIZE);
  my $body = decode_json $data;

  my @validators = (validateCode($body->{'code'}));

  unless (my $error = runValidators(\@validators)) {
    $sth->bind_param(1, $body->{'code'});
    $sth->bind_param(2, encode_json({ en => $body->{'en'}, ru => $body->{'ru'} }), { pg_type => PG_JSONB });
    $sth->bind_param(3, $body->{'range'}, { pg_type => PG_INT4 });

    $sth->execute();
  } else {
    print $error;
  }

  return Apache2::Const::OK;
}

1;
