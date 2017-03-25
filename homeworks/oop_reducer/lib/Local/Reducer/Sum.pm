package Local::Reducer::Sum;

use parent 'Local::Reducer';
use strict;
use warnings;
use diagnostics;

sub _init
{
    my $self = shift;
    die unless defined $self ->{field};
}

sub _reduce
{
    my ($self, $tmp) = @_;
    return ($self->{reduced})+($tmp->get($self->{field}, 0));
}
1;
