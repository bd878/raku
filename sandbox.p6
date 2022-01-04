#!/usr/bin

my @butterfly-genus = <Hamadryas Sostrata Junonia>;
@butterfly-genus[ 0, *-1 ] = <Gargina Trina>;
put @butterfly-genus;
