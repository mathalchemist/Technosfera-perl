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
    my $val = ($tmp->get($self->{top}, 0)) - ($tmp->get($self->{bottom},0));
    if (($self->{reduced})<($val))
    {
        return $val;
    }
    else
    {
        return ($self->{reduced});
    }
}
1;
