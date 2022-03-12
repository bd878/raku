#!/usr/bin/perl

%phone_book;

$command;
while (not $command eq "6") {
  if (defined $command) {
    if ($command eq "1") {
      print "Enter a name: ";
      $name=<STDIN>;
      chomp($name);

      print "Enter a phone: ";
      $phone=<STDIN>;
      chomp($phone);

      $phone_book{$phone}=$name;
    } elsif ($command eq "4") {
      print "\n";
      while (($phone, $name) = each (%phone_book)) {
        print "$name: $phone\n";
      }
      print "\n";
    } else {
      print "unknown command $command\n";
    }
  }

  print "Select a command:\n";
  print "-"x10 . "\n";
  print "1. Add number\n";
  print "2. Lookup for a number\n";
  print "3. Delete number\n";
  print "4. Print all numbers\n";
  print "5. Check if person has a number\n";
  print "6. Exit\n";
  print "-"x10 . "\n";

  print "Enter: ";
  $command=<STDIN>;
  chomp $command;
}