#! /usr/bin/perl
package Local::Row::JSON;
use parent 'Local::Row';
use JSON::XS;
use strict;
use warnings;

sub new {
    my ($self, %params) = @_;
    my $object = \%params;
    bless $object, $self;
    my $valid = eval { $log = JSON::XS->new->utf8->decode($self->{str}); 1 };
        if ($valid) { 
            $log = JSON::XS->new->utf8->decode($self->{str});
            return undef if (ref $log ne 'HASH');
        } else {
        return undef;
        }
}
1;
