#!/usr/bin

sub MAIN ( $num ) {
  put $_, ' = ', .numerator, ' / ', .denominator given $num;
}