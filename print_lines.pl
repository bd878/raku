#!/usr/bin/perl
# perl print_lines.pl < lines.txt
foreach my $line (<STDIN>) {
  chomp($line);
  print "$line\n";
}