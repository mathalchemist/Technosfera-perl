package Local::Reducer::Sum;

use parent 'Local::Reducer';

sub _init
{
    $self = shift;
    die unless defined $self ->{field};
}

sub _reduce
{
    my ($self, $tmp) = @_;
    $self->{redused}+=$tmp->get($self->{field}, $defult);
}
1;
