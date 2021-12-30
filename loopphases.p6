#!/usr/bin

put do loop {
  state $n = 12;
  FIRST { put "Starting"; }
  put $n *= 3;
  last if $n >= 75;
}