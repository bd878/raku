#!/usr/bin/perl 
# 
# Maps countries to
# their capitals
# 
# Usage: get_capital(country);
#

package Capitals;

use strict;
use warnings;

my %countries = (
    China => "Beijin",
    Germany => "Berlin",
    Denmark => "Copenhagen"
);

sub get_capital {
    my $country = shift;
    return "capital not found\n" unless defined $countries{$country};
    return "capital of $country is $countries{$country}\n";
}

1;

