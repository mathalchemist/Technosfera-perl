#/usr/bin/perl

use strict;
use warnings;


sub encode {
    my $str = shift;
    my $key = shift;
    my $encoded_str = '';
    my @letters = split //, $str;
    for $_ (@letters)
       {
            $_ = chr((ord($_)+$key)%128);
       }
    $encoded_str = join('',@letters);

    print "$encoded_str\n";
}

=head1 decode ($encoded_str, $key)

Функция дешифрования ASCII строки $encoded_str ключем $key.
Пачатает дешифрованную строку $str в формате "$str\n"

Пример:

decode('$bcd', 1) - печатает '#abc'

=cut

sub decode {
    my $str = shift;
    my $key = shift;
    my $decoded_str = '';
    my @letters = split //, $str;
    for $_ (@letters)
       {
            $_ = chr((ord($_)-$key))%128;
       }
    $decoded_str = join('',@letters);
    $decoded_str = '#'.$decoded_str;

    print "$decoded_str\n";

}
#encode ('Hello world!',  259);
#encode ('Howto learn perl?', 128);
1;
