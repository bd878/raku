#!/usr/bin

my %count;
for $*ARGFILES.lines() -> $line {
  my ( $genre, $species ) = $line.words[0, 1];
  %count{$genre}{$species}++;
}

spurt "flies-stats.txt", %count;
