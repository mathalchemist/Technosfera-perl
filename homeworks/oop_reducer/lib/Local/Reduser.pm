package Local::Reduser;


sub new{
    my ($class, %params) =  @_;
    my $object = \%params;
    bless ($object, $class);
    die unless defined $object ->{source};
    die unless defined $object ->{row_class};
    die unless defined $object ->{initial_value};
    $object->{redused} = $object->{initial_value};
    $object ->_init();
    return $object;
}


sub reduse_n{
    my ($self, $n) = @_;
    my $input = $self->{source};
    for $i (0..n){
        $str = $input->next;
        $tmp =$self->{row_class}->new($str);
        $self->_reduse($tmp);
    }
    return $self->{redused};
}
1;
