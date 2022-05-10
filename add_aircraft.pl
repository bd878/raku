#!/usr/bin/perl

use strict;
use warnings;

use JSON;
use DBI;
use DBD::Pg qw(:pg_types);

use constant IOBUFSIZE => 8192; # random

my $dbh = DBI->connect("dbi:Pg:database=demo;host=127.0.0.1;port=5432", "admin", "admin",
  { RaiseError => 1, AutoCommit => 1, pg_enable_utf8 => 0 });

my $sth = $dbh->prepare("INSERT INTO aircrafts_data (aircraft_code, model, range) VALUES (?, ?, ?)");

my $data = "{ \"code\": \"APH\", \"en\": \"Boeing APH54 Apache\", \"ru\": \"Боинг APH54 Апач\", \"range\": \"100\" }";
my $parsed = from_json $data;

my $model = {
  en => $parsed->{'en'},
  ru => $parsed->{'ru'}
};

$sth->bind_param(1, $parsed->{'code'});
$sth->bind_param(2, to_json({ en => $parsed->{'en'}, ru => $parsed->{'ru'} }), { pg_type => PG_JSONB });
$sth->bind_param(3, $parsed->{'range'}, { pg_type => PG_INT4 });

$sth->execute();
