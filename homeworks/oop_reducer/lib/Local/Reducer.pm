package Local::Reducer;


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
    for $i (0..n){
        $str = $input->next;
        my $tmp =$self->{row_class}->new($str);
        $self->_reduce($tmp);
    }
    return $self->{reduced};
}
1;
