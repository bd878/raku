#!/usr/bin/perl

package Demo::Test;
  
use strict;
use warnings;
  
sub handler {
  my $r = shift;
  
  $r->content_type('text/plain');
  print "mod_perl 2.0 rocks!\n";
  
  return Apache2::Const::OK;
}

1;
