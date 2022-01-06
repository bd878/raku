#!/usr/bin

sub print-dir-files ( Str:D $dirname ) {
  for dir($dirname) {
    if $_.f {
      put $_;
    }

    if $_.d {
      print-dir-files($_.Str);
    }
  }
}

sub MAIN ( Str:D $dirname ) {
  print-dir-files($dirname);
}
