package Local::Reduser::Sum;

use parent 'Local::Reduser';

sub _init
{
    $self = shift;
    die unless defined $self ->{field};
}

sub _reduse
{
    my ($self, $tmp) = @_;
    $self->{redused}+=$tmp->get($self->{field}, $defult);
}
1;
