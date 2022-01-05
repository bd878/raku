#!/usr/bin

sub sum ( $first, $second ) {
  unless $first ~~ Numeric && $second ~~ Numeric {
    fail "Unknown fail";
  }
  return $first + $second;
}

my $result = sum(3, 12);
if $result {
  put "Sum is: ", $result;
} else {
  put "Failed state";
}
