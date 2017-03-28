package DeepClone;

use 5.010;
use strict;
use warnings;
use DDP;


sub _clone {
	my ($orig,$cycle) = @_;
    my $cloned;
    if (my $ref = ref $orig){
	    if ($ref eq 'HASH'){
            my %obj;
            my $res =\%obj;
		    my $cycle = 0;
		    while (my ($key, $val) = each(%$orig)){
			$cycle = 1 if (defined $val and ($val eq $orig));
		    }
		    unless ($cycle) {
			    while (my ($key, $val) = each(%$orig)) {
				$res->{$key} = _clone($val,$cycle);
			    }
		    }

        }
        elsif($ref eq "ARRAY")
        {
            my @res;
            my $cycle = 0;
            for $_(@$orig){
                $cycle = 1 if ($_ = $orig);
                unless($cycle){
                    my $val = _clone($_, $cycle);
                    push @res, $val;
                }
            }
        }
        else{
            my %res;
            return (\%res, 1);
        }
    }
    else{
        return $orig;
    }
}
=beg
	} elsif (ref($orig) eq 'ARRAY') {
		$new = [@{$orig}];
		my $cycle = 0;
		for (@$new) {
			$cycle = 1 if (defined $_ and ($_ eq $orig));
		}
		unless ($cycle) {
			for my $val (@$new) {
				$val = cloning($val, $_[1]);
			}
		}
	} elsif (ref($orig)) {
		$_[1] = 1;
	}
	return $new;
}
=cut


sub clone {
	my $orig = shift;
	my $flag = 0;
	my $result = _clone($orig, $flag);
	if ($flag){
		return undef;
	} else {
		return $result;
	}
}
1;
