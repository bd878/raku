#!/usr/bin/perl
#
# Add directory the program lives in to
# the module search path
#

package Localdir;

use strict;
use warnings;

BEGIN {
    use Cwd;
    our $directory = cwd;
}

use lib $Localdir::directory;
use Capitals;

print Capitals::get_capital("China");
print "\n";

1; 
