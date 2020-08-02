
# NAME

String::Numeric::Whatever - It's a test implement to
**ignore** the difference between `<=>` and `cmp` 

# SYNOPSIS

    use String::Numeric::Whatever;
    my $str = String::Numeric::Whatever->new( value => 'strings' );

    say q|Succeeded in comparing with strings by 'eq'| if $str eq 'strings';            
    say q|Succeeded in comparing with Int by 'eq'| if $str eq 100;            
    say q|Succeeded in comparing with Int by '=='|     if $str == 100;
    say q|Succeeded in comparing with strings by '=='| if $str == 'strings';
              

# DESCRIPTION

to Do

# LICENSE

Copyright (C) worthmine.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

[Yuki Yoshida(worthmine)](https://github.com/worthmine)
