#!/usr/bin

sub MAIN ( Str:D $name ) {
  my $file = $name.IO;
  unless $file ~~ .e {
    fail "{$file} does not exist";
  }

  my %count;
  for $file.lines() -> $line {
    for $line.words -> $word {
      %count{$word.lc}++;
    }
  }

  my $seq = %count.keys.sort( { %count{$^a} } ).reverse;
  for @$seq {
    put "$^a: %count{$^a}";
  }
}
