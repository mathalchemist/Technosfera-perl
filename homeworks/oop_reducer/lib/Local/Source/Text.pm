package Local::Source::Text
use parent Local::Source



sub next{
    my ($self, %text) = @_;
    if(!$self->{delimiter}) $self->{delimiter} = '\n';
    split $self->{text}, $self->delimetr;
    return shift ($self->{array});
}
