#!/usr/bin/perl

use strict;
use warnings;

use open ':std', IO => ':encoding(UTF-8)';

use DBI;
use DBD::Pg qw(:pg_types);

use JSON;

my $dbh = DBI->connect("dbi:Pg:database=demo;host=localhost;port=5432", "admin", "admin",
  { RaiseError => 1, AutoCommit => 1, pg_enable_utf8 => 0 });

my $sth = $dbh->prepare(q{
  INSERT INTO aircrafts_data (aircraft_code, model, range) VALUES (?, ?, ?)
}) or die $dbh->errstr;

$sth->bind_param(1, 'APH');
$sth->bind_param(2, to_json({ en => "Apache AP54 Boeing", ru => "Апач AP54 Боинг" }), { pg_type => PG_JSONB });
$sth->bind_param(3, 100, { pg_type => PG_INT4 });

$sth->execute();

$dbh->disconnect();

1;
