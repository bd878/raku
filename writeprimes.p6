#!/usr/bin

sub MAIN ( Str:D $filename, Int:D $first, Int:D $second ) {
  my $file = try open $filename, :w, :exclusive;
  if $! {
    fail "file {$file} already exists";
  }

  my $primes = gather {
    state $previous = $first;

    while $previous <= $second {
      if $previous.is-prime {
        take $previous;
      }

      $previous++;
    }
  }

  for $primes -> $prime {
    $file.put: $prime;
  }

  $file.close;
}