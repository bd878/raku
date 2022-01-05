#!/usr/bin

class X::MyException is Exception {}

sub my-own-error {
  die X::MyException.new: payload => "My own exception";
}

try {
  CATCH { when X::MyException { put "Custom error" } }
  my-own-error();
}
