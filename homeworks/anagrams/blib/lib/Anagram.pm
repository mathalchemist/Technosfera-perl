package Anagram;

use 5.010;
use utf8;
use strict;
#use diagnostics;
use warnings;
use feature 'unicode_strings';
use Encode qw(decode encode);
use List::MoreUtils qw(uniq);


sub normalize {
    my $word = shift;
    return (join "", sort(split //,$word));
}

sub anagram {
    my $words_list = shift;
    my %dictionary;
    @$words_list = map{lc(decode('UTF-8',$_))}@$words_list;
    for my $word(@$words_list)
    {
        my $qr = normalize($word); 
        push @{$dictionary{$qr}}, $word;
    }
    
    my %result;
    for my $item (keys %dictionary)
    {
        my $res_key =  $dictionary{$item}->[0];
        if( scalar(@{$dictionary{$item}})>1) 
        {
            @{$dictionary{$res_key}} = @{$dictionary{$item}};
            @{$dictionary{$res_key}} = uniq (sort @{$dictionary{$res_key}});
            @{$result{encode('UTF-8', $res_key)}} = map{encode('UTF-8',$_)}@{$dictionary{$res_key}}; 
        }
    }
    

    return \%result;
}

1;
