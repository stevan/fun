#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

use Fun;

my $fun = fun ($x, $y) { $x * $y };

is($fun->(3, 4), 12);

my $fun2 = fun ($z, $w = 10) { $z / $w };

is($fun2->(60), 6);

done_testing;
