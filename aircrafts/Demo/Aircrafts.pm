
#!/usr/bin/perl

package Demo::Aircrafts;

use strict;
use warnings;

use open ':std', IO => ':encoding(UTF-8)';

use DBI;

sub handler {
  my $r = shift;

  $r->content_type('text/plain');

  my $dbh = DBI->connect("dbi:Pg:database=demo;host=127.0.0.1;port=5432", "admin", "admin",
    { RaiseError => 1, AutoCommit => 0 });

  my $sth = $dbh->prepare("SELECT * FROM aircrafts;");

  $sth->execute();

  while ( my @row = $sth->fetchrow_array ) {
    print "@row\n";
  }

  $dbh->disconnect;

  return Apache2::Const::OK;
}

1;

