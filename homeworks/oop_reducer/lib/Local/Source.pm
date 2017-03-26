package Local::Source;
use strict;
use warnings;


sub new{
    my ($class, %params) = @_;
    my $object = \%params;
    my $self = bless($object, $class);
    $self->{count} = 0;
    return $self;
}



sub next{
    my $self = shift;
    my $arr = $self->{array};
    return $arr->[($self->{count})++];
}
1;
