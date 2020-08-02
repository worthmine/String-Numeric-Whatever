package String::Numeric::Whatever;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.03";

require Tie::Scalar;
our @ISA = qw(Tie::StdScalar);

use overload (
    '<=>' => \&compareAny,
    'cmp' => \&compareAny,
);

sub compareAny {
    no warnings;
    my $self = shift;
    return ( $_[0] ^ $_[0] ) eq '0'
        ? $self->FETCH() <=> $_[0]
        : $self->FETCH() cmp $_[0];
}

1;
__END__

=encoding utf-8

=head1 NAME

String::Numeric::Whatever - It's a test implement to
B<ignore> the difference between C<E<lt>=E<gt>> and C<cmp> 

=head1 SYNOPSIS

 use String::Numeric::Whatever;
 my $str = String::Numeric::Whatever->new( value => 'strings' );

 say q|Succeeded in comparing with strings by 'eq'| if $str eq 'strings';            
 say q|Succeeded in comparing with Int by 'ne'|     if $str ne 100;            
 say q|Succeeded in comparing with Int by '!='|     if $str != 100;
 say q|Succeeded in comparing with strings by '=='| if $str == 'strings';
           
=head1 DESCRIPTION

to Do


=head1 LICENSE

Copyright (C) worthmine.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

L<Yuki Yoshida(worthmine)|https://github.com/worthmine>

=cut
