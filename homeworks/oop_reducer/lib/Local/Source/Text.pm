package Local::Source::Text;
use parent 'Local::Source';
use strict;
use warnings;



sub init{
    my $self = shift;
    if(not defined $self->{delimiter}) 
    {
        $self->{delimiter} = '\n';
    }
    my @arr = split $self->{delimiter}, $self->{text};
    $self->{array} = \@arr;
}
1;
