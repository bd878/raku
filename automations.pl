#!/usr/bin/perl

# It is the program that loads
# trigger sequences to runtime data

use strict;
use warnings;

use JSON::PP;
use Scalar::Util qw(isvstring);
use FileHandle;

use constant IOBUFSIZE => 8192; # random

my $fh = FileHandle->new("/tmp/sequence", "r");
my $cnt = read($fh, my $data, IOBUFSIZE);

print "$cnt\n";

my $parsed = decode_json $data;
print $parsed;
