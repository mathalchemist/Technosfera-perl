#!/usr/bin/env perl

use strict;
use warnings;
use FindBin; use lib "$FindBin::Bin/../lib";
use Test::More;

use_ok 'Local::Row::Simple';

is_deeply Local::Row::Simple->new( str => "" )->{str}, {}, "empty struct";
is_deeply Local::Row::Simple->new( str => "key:val" )->{str}, {key => "val"}, "one pair";
is_deeply Local::Row::Simple->new( str => "a:1,b:2" )->{str}, { a => 1, b => 2 }, "two pairs";

is_deeply Local::Row::Simple->new( str => "test" )->{str}, undef, "no value";
is_deeply Local::Row::Simple->new( str => "test:test:test" )->{str}, undef, "too many colons in pair";
is_deeply Local::Row::Simple->new( str => "test,test,test" )->{str}, undef, "record does not have value";
is_deeply Local::Row::Simple->new( str => "key:val,test" )->{str}, undef, "record does not have value 2";

done_testing();
