package Local::Reducer;
use strict;
use warnings;

sub new{
    my ($class, %params) =  @_;
    my $object = \%params;
    bless ($object, $class);
    die unless defined $object ->{source};
    die unless defined $object ->{row_class};
    die unless defined $object ->{initial_value};
    $object->{reduced} = $object->{initial_value};
    $object ->_init();
    return $object;
}


sub reduce_n{
    my ($self, $n) = @_;
    my $input = $self->{source};
    for my $i (0..$n){
        my $str = $input->next;
        my $q = $self->_reduce($str);
        $self->{redused} =$q; 
    }
    return $self->{reduced};
}
sub reduced{
    my $self = shift;
    return $self->{reduced};
}
1;
