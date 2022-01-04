#!/usr/bin

my @colors = <white red orange yellow green pale-blue blue purple black>;
my $colors-iter := gather take @colors[$++ % @colors.elems] while 1;
say $colors-iter;
