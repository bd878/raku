#!/usr/bin/perl

use lib qw(/home/httpd/perl/lib);

use Apache2::RequestRec ();
use Apache2::RequestIO ();

use Apache2::Const -compile => ':common';
use APR::Const -compile => ':common';

1;