#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

use Fun;

my $fun = fun ($x, $y) { $x * $y };

is($fun->(3, 4), 12);

done_testing;
