package Local::Reducer::MaxDiff;

use parent 'Local::Reducer';
use Local::Row::Simple;
use strict;
use warnings;
use diagnostics;

sub _init
{
    my $self = shift;
    die unless defined $self->{top};
    die unless defined $self->{bottom};
}

sub _reduce
{
    my ($self, $str) = @_;
    my $tmp =($self->{row_class})->new(str=>$str);
    my $val = $tmp->get($self->{field}, 0);
    if (($self->{reduced})<($val))
    {
        return ($tmp->get($self->{field}, 0));
    }
    else
    {
        return ($self->{reduced});
    }
}
1;
