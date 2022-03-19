#!/usr/bin/perl

use Student;

print "Welcome to checkbook 1.1\n";

my $student = new Student("Ivan", 20);
print "$student->{'name'}\non grade $student->{'grade_number'}\n";