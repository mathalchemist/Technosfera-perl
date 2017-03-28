
use 5.010;
use strict;
use warnings;

my @a = {};
my $b = \@a;
if(my $ref =  ref $b){say "$ref"};
my $gs = ref @a;
if($gs = undef) {say "!!!"};
