package Local::Reducer::Sum;

use parent 'Local::Reducer';
use strict;

sub _init
{
    my $self = shift;
    die unless defined $self ->{field};
}

sub _reduce
{
    my ($self, $tmp) = @_;
    my $defult = 0;
    $self->{redused}+=$tmp->get($self->{field}, $defult);
}
1;
