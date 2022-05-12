#!/usr/bin/perl

use strict;
use warnings;

use Validators qw(validate_code);
use DBI;
use JSON::PP;
use DBD::Pg;

use constant IOBUFSIZE => 32; # random

sub handler {
  my $r = shift;

  $r->content_type('text/plain');

  my $dbh = DBI->connect("dbi:Pg:database=demo;host=127.0.0.1;port=5432", "admin", "admin",
    { RaiseError => 1, AutoCommit => 1, pg_enable_utf8 => 0 });

  my $sth = $dbh->prepare("DELETE FROM aircrafts_data WHERE aircraft_code = ?");

  $r->read(my $data, IOBUFSIZE);

  unless (my $error = validate_code($data)) {
    $sth->bind_param(1, $data);

    $sth->execute();
  } else {
    print $error;
  }

  return Apache2::Const::OK;
}

1;
