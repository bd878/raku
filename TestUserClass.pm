#!/usr/bin/perl
#
# Test User class that is
# supposed to serve
# test needs. It also is a training
# package for perl OOP techniques
#

package TestUserClass;
 
use strict;
use warnings;

sub new {
    my $class = shift;
    my ($login, $passwd, $sublogin) = @_;

    my $self = bless {
        login => $login,
        passwd => $passwd,
        sublogin => $sublogin,
    }, $class; 

    return $self;
}

sub login {
    my $class = shift;
    if (@_) {
        $class->{login} = shift;
    }
    return $class->{login};
}

sub sublogin {
    my $class = shift;
    if (@_) {
        $class->{sublogin} = shift;
    }
    return $class->{sublogin};
}

sub passwd {
    my $class = shift;
    if (@_) {
        $class->{passwd} = shift;
    }
    return $class->{passwd};
}

1;
