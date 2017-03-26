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
        $result{$cur[0]} = $cur[1];
    }
    return \%result;

}
1;
