#!/usr/bin

sub MAIN ( Str:D $next-wd = '/home' ) {
  put "Current wd: ", $*CWD;

  unless my $dir = chdir $next-wd {
    fail "Failed to change dir";
  }

  put "Now wd is: ", $*CWD;
}
