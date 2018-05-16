#!/usr/bin/perl
use warnings;
use strict;

my @days = qw(mon tue wed thu fri sat sun);
my @weekend = @days[-2 .. -1];

# to get num of ele in array use scalar() fun

my $count = scalar @days;

print($count,"\n");


print("@days","\n");
print("@weekend");

my @stack = ();
push(@stack,1);
push(@stack,2);
push(@stack,3);

print("@stack");

my $ele = pop(@stack);

print($ele);
print("@stack");


# unshift and pop fun is used to make queue. it will add the each new ele in front and removes the ele from last.
my @queue = ();

unshift(@queue,1);
unshift(@queue,2);
unshift(@queue,3);

print(@queue);

$ele = pop(@queue);
print($ele);

print(@queue,"\n");

#sort

my @a = qw(3 4 1 5 2);
#print(sort(@a),"\n");

@a = sort {$x <=> $y} @a;

print(@a);
