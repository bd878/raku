#!/usr/bin

my $n = 0;
my $sum = FatRat.new: 0, 1;

loop {
  state $d = 0;
  $d++;

  $sum += FatRat.new: 1, $d;
  put $d, ': ', .numerator, '/', .denominator, ' = ', $_ given $sum;

  last if $d == 100;
}
