#!/usr/bin

sub suf {
  my $seq = gather {
    loop {
      state $item = 1;

      my $suffix;
      if $item == 1 {
        $suffix = 'st';
      } elsif $item == 2 {
        $suffix = 'nd';
      } elsif $item == 3 {
        $suffix = 'rd';
      } else {
        $suffix = 'th';
      }

      take $item => $suffix;

      $item++;
      last if $item == 10;
    }
  }

  return $seq;
}

put suf();
