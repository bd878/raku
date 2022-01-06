#!/usr/bin

sub MAIN ( Str:D $dirname ) {
  try {
    CATCH {
      when X::IO::Mkdir { put "Exception is {.message}" }
      default { put "unknown exception" }
    }
    my $subdir = $*CWD.add: $dirname;
    mkdir $subdir;
  }
}
