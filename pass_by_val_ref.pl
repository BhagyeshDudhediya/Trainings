#!/usr/bin/perl
use warnings;
use strict;

# pass by Reference

my $a = 10;
my $b = 20;

sub change{
	@_[0] = 1;
	@_[1] = 2;
}

&change($a,$b);

print("after callinf subroutine: $a $b\n");

#pass by value

my $p = 10;
my $q = 20;

sub change_val{
	my ($n,$m)=@_;
	$n = 1;
	$m = 2;
}

&change_val($p,$q);

print("after callinf subroutine: $p $q\n");


# array reference to subroutine

my @a = (1,3,2,6,8,4,9);
 
my $m = &max(\@a);
 
print "The max of @a is $m\n";
 
sub max{
    my $aref = $_[0];
    my $k = $aref->[0];
 
    for(@$aref){
        $k = $_ if($k < $_);
    }
    return $k;
}
