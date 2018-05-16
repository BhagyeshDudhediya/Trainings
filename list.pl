#!/usr/bin/perl
use warnings;
use strict;

print(());
print(10,20,30); # list is immutable. one can not change directly.
print("this","is","list");

my $x = 10;
my $y = "string";

print("Complex",$x,$y);



print(qw(red green blue)); # qw() is used to get list from fro words separated by space
