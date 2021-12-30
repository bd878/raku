#!/usr/bin

my $first = prompt('Enter first number: ');
if val($first) ~~ Numeric {
  my $second = prompt('Enter second number: ');

  if val($second) ~~ Numeric {
    put 'Sum is = ' ~ $first + $second;
    put 'Diff is = ' ~ $first - $second;
    put 'Product is = ' ~ $first * $second;
    put 'Quot is = ' ~ $first / $second;
  } else {
    put $second, ' is not numeric';
  }
} else {
  put $first, ' is not numeric';
}

