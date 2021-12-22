#!/usr/bin per6

sub MAIN ( $thingy ) {
  my $number = $thingy.parse-base: 16;

  put 'binary: ', $number.base: 2;
  put 'octal: ', $number.base: 8;
  put 'decimal: ', $number.base: 10;
  put 'hex: ', $number.base: 16;
}