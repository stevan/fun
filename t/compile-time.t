#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

use Fun;

TODO: { todo_skip "doesn't work at compile time yet", 1;
is(foo(), "FOO");
}

fun foo { "FOO" }

done_testing;
