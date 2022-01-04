#!/usr/bin

my @letters = 'a' .. 'f';
my @reversed-letters;
while ?@letters {
  @reversed-letters.push: pop @letters;
}
say @letters;
say @reversed-letters;
