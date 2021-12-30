#!/usr/bin

my $trim-and-lower := {
  $_ = $_.trim;
  $_ = $_.lc;
};

my $str = ' Brevi Manu   ';
put "\$str is <<$str>>";
say $trim-and-lower($str);
put "now \$str is <<$str>>";
