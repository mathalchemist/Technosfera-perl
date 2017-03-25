package Local::Source;



sub new{
    my ($class, %param) = @_;
    my $object = \%params;
    my $self = bless($object, $class);
    return $self;
}



sub next{
    my $self = shift;
    my @arr = $self->{shift};
    return shift @arr;
}
1;
