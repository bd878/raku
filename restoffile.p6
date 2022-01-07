#!/usr/bin

for @*ARGS {
  my $fh = open $_;

  put $fh.path;

  if .IO.e && .IO.s > 0 {
    for $fh.lines {
      state $lines = 0;

      FIRST { put $_ }
      LAST {
        if $lines > 1 {
          put "{$lines} lines";
          put $_;
        }

        put "---";
      }

      $lines++;
    }
  } else {
    put "<file is empty>";
  }
}