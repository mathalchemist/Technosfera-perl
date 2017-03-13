#!usr/bin/perl
use v5.10.0;
use charnames ":alias" => {
        "APPLE LOGO" => 0xF8FF,
};
say "\N{APPLE LOGO}";
