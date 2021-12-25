#!/usr/bin

sub MAIN ( $highest = 100 ) {
  my $number = $highest.rand.Complex.Int + 0i;

  loop {
    my $guess;
    state $attempt = 0;
    state $is_guessed = False;
    $attempt++;

    put '#', $attempt, ' attempt';
    $guess = prompt 'Your complex number ($num+0i): ';

    if $guess > $number / 2 {
      put 'guessed number is less';
      }
    elsif $guess < $number / 2 {
      put 'guessed number is greater';
      }
    else {
      put 'guessed number is ', $number;
      $is_guessed = True;
    }

    if $attempt == 5 {
      put 'hidden number is: ', $number;
    }

    if $is_guessed {
      put 'you guessed the number';
    }

    last if $attempt == 5 or $is_guessed;
  }
}