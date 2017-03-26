#! /usr/bin/perl;
package Local::Row;
use strict;
use warnings;
use diagnostics;

sub new{
    my($self, %params)  = @_;
    my $object  = \%params;
    bless $object, $self;
    die unless defined $self->{str};
    my $string = $self->parse;
    $self->{str} = $string;
    return $self;
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

