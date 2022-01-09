#!/usr/bin

sub suf {
  my %endings =
    1, 'st',
    2, 'nd',
    3, 'rd'
    ;

  my $seq = gather {
    loop {
      state $item = 1;

      my $suffix;
      if %endings{$item}:exists {
        $suffix = %endings{$item};
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
