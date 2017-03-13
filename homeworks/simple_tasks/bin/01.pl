#!/usr/bin/perl
use Math::complex;
use strict;
use warnings;
use 5.010;

    sub run {
         my ($a_value, $b_value, $c_value)=@_;
#print "a_value, b_value, c_value";
=beg        my $a_value = shift;
        my $b_value = shift;
        my $c_value = shift;
=cut        
#      print sprintf("%d",$b_value);
        my $x1 = undef;
        my $x2 = undef;
        my $deter = ($b_value**2 - (4*$a_value*$c_value));
#        my $deter = $b_value**2;
#       $deter-=4*$a_value*$c_value;
#        print sprintf("%g, \n", $deter);
        if(($deter <0)||($a_value==0))
        {
            print"No solution!\n";
        }
        elsif ($deter == 0)
        {
#            say ("first");
#            print "1\n";
            $x1=$x2=(-$b_value)/(2*$a_value);
            print sprintf("%g, %g\n", $x1, $x2);
        }
        else
        {
#            say "2";
#            print "deter\n";
            my $div = $a_value*2;
#           print "$div \n";
            my $sqd =sqrt($deter);
#            print "2\n";
            my $sum1 = -$b_value+$sqd;
            my $sum2 = -$b_value-$sqd;
            $x1 = $sum1/(2*$a_value);
            $x2 = $sum2/(2*$a_value);
#      print sprintf("%g, %g\n", $x1, $x2);
            print sprintf("%g, %g\n", $x1, $x2);
        }
    }
1;
#run(2,4,2);
#run(-2,0,128)
