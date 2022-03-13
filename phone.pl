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
    } elsif ($command eq "2") {
      print "Enter a number: ";
      $input_number=<STDIN>;
      chomp $input_number;

      $found_name=$phone_book{$input_number};
      if (defined $found_name) {
        print "found $found_name person with $input_number phone\n";
      } else {
        print "no person found with phone $input_number\n";
      }
    } elsif ($command eq "3") {
      print "Enter a number: ";
      $input_phone=<STDIN>;
      chomp $input_phone;

      ($phone, $name)=delete $phone_book{$input_phone};
      if (defined $phone) {
        print "$name number $phone deleted\n";
      } else {
        print "no person with phone number $input_phone found\n";
      }
    } elsif ($command eq "4") {
      print "\n";
      while (($phone, $name) = each (%phone_book)) {
        print "$name: $phone\n";
      }
      print "\n";
    } elsif ($command eq "5") {
      print "Enter a name: ";
      $input_name=<STDIN>;
      chomp $input_name;

      $found;
      while (($phone, $name) = each %phone_book) {
        if ($input_name eq $name) {
          print "$phone\n";
          $found="1";
        }
      }

      if (not defined $found) {
        print "$input_name has no number\n";
      }
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