#!/usr/bin/perl

package Demo::Inc;

sub handler {
  my $r = shift;
  
  $r->content_type('text/plain');
  for (sort keys %ENV){
    print "$_ => $ENV{$_}\n";
  }

  foreach my $i (@INC) {
    print $i;
  }
  
  return Apache2::Const::OK;
}

1;

