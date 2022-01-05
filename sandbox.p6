#!/usr/bin

sub test-fail {
  return fail "test fail";
}

my $result = test-fail();
put "{$result.^name}";
