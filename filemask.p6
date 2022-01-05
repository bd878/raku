#!/usr/bin

sub MAIN( Str:D $filename ) {
  my $mode = $filename.IO.mode;

  my $usr = ( $mode +& 0o700 ) +> 6;
  my $group = ( $mode +& 0o070 ) +> 3;
  my $all = ( $mode +& 0o007 );

  put qq:to/END/
  mode: { $mode.fmt: '%04o' }
    usr: { $usr }
      read: { ($usr +& 0b100).so }
      write: { ($usr +& 0b010).so }
      execute: { ($usr +& 0b001).so }
    group: { $group }
    all: { $all }
  END
}