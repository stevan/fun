#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

use Fun;

my $thing = 1;

fun foo ($bar) { $bar = 1 }

ok(!eval { foo(); 1 });
ok(!eval { foo(1); 1 });
ok(!eval { foo($thing); 1 });
ok(!eval { foo($thing + 1); 1 });

fun bar ($baz) { $baz }

ok(eval { bar(); 1 });
ok(eval { bar(1); 1 });
ok(eval { bar($thing); 1 });
ok(eval { bar($thing + 1); 1 });

ok(eval { $thing = 2; 1 });
is($thing, 2);

fun baz ($quux) { $_[0] = 1 }

ok(eval { baz($thing); 1 });
is($thing, 1);

done_testing;
