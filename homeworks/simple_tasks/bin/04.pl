#!/usr/bin/perl

use strict;
use warnings;

sub run{
    my ($x) = @_;
    my $num = 0;
    my $div = 1;
    for (my $i = 0; ($i < 32) && ($div = 1); $i++)
    {
        if(($x>>$i)%2 == 0)
        {
            $num = $i;
        }
        else {$div = 0;}
    }
    print "$num\n";
}
run( 0xffff0000, '16');
run(0x80000000, '31');

1;
