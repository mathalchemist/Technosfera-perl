package Local::Row::JSON;
use parent 'Local::Row';

sub new {
    my ($class, %params) = @_;
    my $log;
    my $valid = eval { $log = JSON::XS->new->utf8->decode($params->{str}); 1 };
        if ($valid) { 
            $log = JSON::XS->new->utf8->decode($params->{str});
            return undef if (ref $log ne 'HASH');
        } else {
        return undef;
        }
        my %res = ('log',$log);
        return bless \%res, $class;
}
1;
