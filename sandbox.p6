#!/usr/bin

my $list = map {
  slip {
    if $^a == 2 {
      'hello';
    } else {
      $^a;
    }
  }
}, 1..3;

put $list;
