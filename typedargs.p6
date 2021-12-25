#!/usr/bin

sub MAIN ( Int $first, Str $second ) {
  put 'First type is: ', $first.^name;
  put 'Second type is: ', $second.^name;
}