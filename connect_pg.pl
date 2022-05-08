#!/usr/bin/perl

use strict;
use warnings;

use open ':std', IO => ':encoding(UTF-8)';

use DBI;

my $dbh = DBI->connect("dbi:Pg:database=demo;host=localhost;port=5432", "admin", "admin",
  { RaiseError => 1, AutoCommit => 0 });

my $sth = $dbh->prepare("SELECT * FROM aircrafts;");

$sth->execute();

while ( my @row = $sth->fetchrow_array ) {
  print "@row\n";
}

$dbh->disconnect;

1;
