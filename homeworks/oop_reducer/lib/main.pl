use FindBin;
use DDP;
use lib "$FindBin::Bin/lib";
use Local::Reduser::Sum;
use Local::Source::Array;
use Local::Row::JSON

my $reducer = Local::Reduser::Sum->new(
        field => 'price',
        source => Local::Source::Array->new(array => [
                            '{"price": 1}',
                            '{"price": 2}',
                            '{"price": 3}',
                                                ]),
        row_class => 'Local::Row::JSON',
        initial_value => 0,
        );
$reducer->reduse_n(2)
