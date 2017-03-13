#!/usr/bin/perl

use strict;
use warnings;

sub run {
        my ($x, $y, $z) = @_;
        my $min = $x;
        my $max = $y;
        for ( @_) {
            if($_ <$min)
            {$min = $_}
            if($_>$max)
            {$max =$_ }
        }

                    print "$min, $max\n";
}
run(3,2,1)
#1;

