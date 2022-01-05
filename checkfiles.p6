#!/usr/bin

sub MAIN {
  for @_ {
    if ! $_.IO.e {
      put "File {$_} does not exist"
    } else {
      given $_.IO {
        my @permissions;

        if .r {
          @permissions.push: "readable";
        }

        if .w {
          @permissions.push: "writable";
        }

        if .x {
          @permissions.push: "executable";
        }

        put @permissions.join: ' ';
      }
    }
  }
}
