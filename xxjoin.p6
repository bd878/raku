#!/usr/bin

sub MAIN ( Str $str, Int:D $times ) {
  my $result = $str xx $times;
  put $result.join: "\n";
}