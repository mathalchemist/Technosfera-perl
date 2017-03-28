#! /usr/bin/perl;
package Local::Row::Simple;
use parent 'Local::Row';

use strict;
use warnings;
use diagnostics;

sub parse{
    my $self = shift;
    my %result;
    my @cur;
    my $string  = $self->{str};
    my @arr_of_fields = split (/,/, $string);
    for my $elem (@arr_of_fields){
        @cur = split (/:/, $elem);
        if ((exists $cur[0]) and (exists $cur[1]) and (not exists $cur[2]))
        {
            $result{$cur[0]} = $cur[1];
        }
        else 
        {
            return undef;
        }
    }
    return \%result;

}
1;
