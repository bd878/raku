#!/usr/bin

loop {
  state $num = 1;
  $num++;
  last if $num == 100;
  if $num %% 3 and $num %% 5 {
    put "DoIt";
    }
  elsif $num %% 3 {
    put "Do";
    }
  else {
    put "It";
  }
}