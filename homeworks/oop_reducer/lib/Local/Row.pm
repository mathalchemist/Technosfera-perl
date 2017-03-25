package Local::Row;

sub new{
    my ($self, %params) = @_;
    bless \%params, $self;
    $self ->{$source} ->next;
    $str->{$str} = $self->params;
}

sub get {
    my ($self, $name, $default) = @_;
    my %log = %{ $self->{'log'} };
    if (exists $log{$name}) {
    return $log{$name};
    } else {
    return $default;
                        }
}

1;

