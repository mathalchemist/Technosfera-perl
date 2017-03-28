
#!/usr/bin/env perl

use strict;
use warnings;
use FindBin; use lib "$FindBin::Bin/../lib";
use Local::Row;
use Local::Row::Simple;
use FindBin; use lib "$FindBin::Bin/./lib";
Local::Row::Simple->new( str => "" );
Local::Row::Simple->new( str => "key:val" );
Local::Row::Simple->new( str => "a:1,b:2" );
Local::Row::Simple->new( str => "test" );
Local::Row::Simple->new( str => "test:test:test" );
Local::Row::Simple->new( str => "test,test,test" );
