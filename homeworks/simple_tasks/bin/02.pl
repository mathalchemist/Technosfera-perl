#!/usr/bin/perl

use strict;
use warnings;

sub run {
            my ($x, $y) = @_;
                my $numtype;
                for (my $i = $x; $i <= $y; $i++){
                    $numtype = 0;
                    for(my $j = 2; $j <= $i/2; $j++)
                    {
                        if ($i%$j==0) 
                        {$numtype = 1;
                            last;
                        }
                    }
            
                    if((not $numtype) && ($i!=1))
                    {
                        print "$i\n";
                    }
                }
                        
    }
run (1,1000);
#1;
