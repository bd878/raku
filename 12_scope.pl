#!/usr/bin/perl

sub average {
  local(@temp)=@_;
  $temp[0]++;
  foreach $num (@temp) {
    $total += $num;
  }
  return ($total / ($#temp+1));
}

#main program
@temp=(10,20);
print &average (@temp), "\n";
print "@temp";