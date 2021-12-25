#!/usr/bin

sub MAIN ( $num ) {
  put 'Saw ', do given $num {
    when Int { 'an integer' }
    when Complex { 'complex number' }
    when Rat { 'a rat' }
    default { 'something' }
  }
}