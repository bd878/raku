#!/usr/bin

my $max-of-three := {
  put ($^a, $^b, $^c).max();
}

say $max-of-three.signature;

$max-of-three(1, 2, 3);
