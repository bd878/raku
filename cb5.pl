#!/usr/bin/perl

@book=("DEP:12/12/1999:Beginning Balance:100");

$command;
while ($command != 8) {
  if (defined $command) {
    if ($command == 1) {
      print "Enter the date: ";
      chomp($date=<STDIN>);
      print "\nEnter a comment: ";
      chomp($comment=<STDIN>);
      print "\nEnter amount: ";
      chomp($amount=<STDIN>);

      push(@book, "DEP:$date:$comment:$amount");
    } elsif ($command == 2) {
      print "Enter the date: ";
      chomp($date=<STDIN>);
      print "\nEnter a comment: ";
      chomp($comment=<STDIN>);
      print "\nEnter amount: ";
      chomp($amount=<STDIN>);

      push(@book, "WD:$date:$comment:$amount");
    } elsif ($command == 3) {
      print "Enter a cheque id: ";
      chomp($cheque=<STDIN>);
      print "\nEnter the date: ";
      chomp($date=<STDIN>);
      print "\nEnter a comment: ";
      chomp($comment=<STDIN>);
      print "\nEnter amount: ";
      chomp($amount=<STDIN>);

      push(@book, "$cheque:$date:$comment:$amount");
    } elsif ($command == 7) {
      foreach $record (@book) {
        print "$record\n";
      }
    } else {
      print "command $command is not supported\n";
    }
  }

  print "Your balance is: $balance\n";
  print "-"x30 . "\n";
  print "1. Enter a deposit\n";
  print "2. Enter a withdrawal\n";
  print "3. Enter a check\n";
  print "4. Lookup a check by #\n";
  print "5. Lookup a check by date\n";
  print "6. Print a statement\n";
  print "7. Print a book\n";
  print "8. Exit program\n";
  print "-"x30 . "\n";
  print "Enter the command: ";
  $command=<STDIN>;
  chomp $command;
  print "You choose $command\n";
}