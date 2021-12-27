#!/usr/bin

loop {
  my $str = prompt "Enter a string: ";
  if ?$str {
    put $str, ' has ', $str.chars, ' characters';
  } else {
    put 'You entered an empty string. Exit';
  }

  last if !?$str;
}