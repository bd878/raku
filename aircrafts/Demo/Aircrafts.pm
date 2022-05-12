#!/usr/bin/perl

package Demo::Aircrafts;

use strict;
use warnings;

use JSON::PP;
use DBI;

sub handler {
  my $r = shift;

  $r->content_type('text/plain');

  my $dbh = DBI->connect("dbi:Pg:database=demo;host=127.0.0.1;port=5432", "admin", "admin",
    { RaiseError => 1, AutoCommit => 0, pg_enable_utf8 => 0 });

  my $sth = $dbh->prepare("SELECT * FROM aircrafts;");

  $sth->execute();

  my %body = (
    list => []
  );

  while ( my @row = $sth->fetchrow_array ) {
    push @{$body{'list'}}, \@row;
  }

  print encode_json \%body;

  $dbh->disconnect;

  return Apache2::Const::OK;
}

1;

