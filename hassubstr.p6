#!/usr/bin

loop {
  my $str = prompt 'Enter a string: ';
  if ?$str {
    put do if $str.fc.contains: 'hamad' {
      'contains';
    } else {
      'does not contain';
    }
  } else {
    put 'You entered an empty string';
  }

  last if !?$str;
}