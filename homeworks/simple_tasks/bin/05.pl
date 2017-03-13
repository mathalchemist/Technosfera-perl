#!/usr/bin/perl

use strict;
use warnings;


sub run {
    my $str = shift,
    my $substring = shift;
    my $i = 0;
    my $len = length $str;
    my $ans = 0;
    my $sub_len = length $substring;
    while ($i < $len)
    {
        $i =(index $str, $substring, $i);
        if($i == -1) { last;}
        $i += $sub_len;
        $ans+=1
    }
    print "$ans\n";
}
run("aaaa", "a");
1;
