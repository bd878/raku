#!/usr/bin/perl

%dog_owners=qw(Bob Fido Sue Spot Fred Teddy Sally Rex);

foreach $name (values %dog_owners) {
  while (($key, $value) = each %dog_owners) {
    if ($name eq $value) {
      print "$value is owned by $key\n";
    }
  }
}