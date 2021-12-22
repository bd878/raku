#!/usr/bin

sub MAIN ( $highest = 100 ) {
  my $number = $highest.rand.Int;

  loop {
    my $guess;
    state $attempt = 0;
    state $is_guessed = True;
    $attempt++;

    put '#', $attempt, ' attempt';
    $guess = prompt 'Your number: ';

    if $guess > $number / 2 {
      put 'guessed number is less';
      }
    elsif $guess < $number / 2 {
      put 'guessed number is greater';
      }
    else {
      put 'guessed number is ', $number;
      $is_guessed = False;
    }

    last if $attempt == 5 or $is_guessed;
  }
}