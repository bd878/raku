#!/usr/bin

sub MAIN ( Int:D $divisible, Int:D $divisor ) {
  try {
    CATCH {
      default { put "Caught {.^name}, because it was an {.message}" }
    }
    put $divisible / $divisor;
  }
  put "Got to the end";
}
