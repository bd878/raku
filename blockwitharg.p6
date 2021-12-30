#!/usr/bin

my $one-arg := {
  put "The argument is $_";
  $_ = 5;
};

my $str = "Sofort";
say "\$str starts with $str";
$one-arg($str);
say "\$str is now $str";
