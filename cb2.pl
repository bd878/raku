#!/usr/bin/perl

print "Enter your name: ";
$name=<STDIN>;
$balance=100;
$choice;
print "Your balance is: $balance\n";
print "-"x30 . "\n";
print "1. Enter a deposit\n";
print "2. Enter a withdrawal\n";
print "3. Enter a check\n";
print "4. Lookup a check by #\n";
print "5. Lookup a check by date\n";
print "6. Print a statement\n";
print "7. Exit program\n";
print "-"x30 . "\n";
print "Enter you choice: ";
$choice=<STDIN>;
chomp $choice;
print "You choose $choice\n";