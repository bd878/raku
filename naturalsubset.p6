#!/usr/bin

subset NonZeroNum of Numeric where * != 0;

sub divide ( Int:D $numerator, NonZeroNum:D $denominator ) {
  return $numerator / $denominator;
}

put divide( 1, -1);
