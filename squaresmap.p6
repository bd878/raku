#!/usr/bin

sub squares {
  my $squares = Map.new: (1..10).map: { $_ => $_ * $_ };

  loop {
    my $value = prompt "Enter a value: >";

    if $squares{$value}:exists {
      put $squares{$value};
    } else {
      put $value * $value;
    }

    last unless $value;
  }
}

squares();
