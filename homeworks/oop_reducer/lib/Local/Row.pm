package Local::Row;
use strict;
use warnings;
use diagnostics;

sub new{
    my ($self, $str) = @_;
    
    $self ->{str}= $str;
}

sub get {
    my ($self, $name, $default) = @_;
    if (exists $self->{str}{$name}) {
    return $self->{str}{$name};
    } else {
    return $default;
                        }
}

1;

