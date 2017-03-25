#!usr/bin/perl

use strict;
use warnings;
#use diagnostics;
use v5.10;

my $string = '212.195.148.171 [03/Mar/2017:18:28:38 +0300] \"GET /music HTTP/1.1" 200 66260 "https://my.mail.ru/some/page/254981" "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36" "6.37\"';
my $w = "(.+?)";
$string =~ m/^$w $w $w $w $w $w $w $w$/;
say'1 '.$1;
say'2 '. $2;
say'3 ' .$3;
say'4 ' .$4;
say'5 ' .$5;
say'6 ' .$6;
say'7 ' .$7;
say'8 ' .$8;
