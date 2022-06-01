#!/usr/bin/perl
#
# Playing with perl Test::Simple
# library for tests.
# Some basic tests here
#

use strict;
use warnings;

use LocalDir;
use lib "$LocalDir::Dir";
use TestUserClass;

use Test::Simple tests => 3;

my $user = TestUserClass->new('codeception', 'eepe5See');

$DB::single=1;

ok( $user->login eq 'codeception', 'login is valid' );
ok( $user->passwd eq 'eepe5See', 'password is valid' );
ok( not(defined $user->sublogin), 'sublogin is not set' );

1; 
