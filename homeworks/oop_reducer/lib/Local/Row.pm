#! /usr/bin/perl;
use v5.10;
package Local::Row;
use strict;
use warnings;
use diagnostics;

sub init{
    my($class, %params)  = @_;
    my $object = \%params;
    my $self = bless $object, $class;
    die unless defined $self->{str};
    return $self;
}
sub new{
        my $self = init(@_);
        my $string =  $self->{str};
        my $q = $self->parse;
        $self->{str} =$q;
}

sub get {
    my ($self, $name, $default) = @_;
    if (exists $self->{str}->{$name}) {
    return $self->{str}->{$name};
    } else {
    return $default;
                        }
}

1;

