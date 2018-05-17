#!/usr/bin/perl
use warnings;
use strict;

#do..while loop with next and last statement

my @stack = qw(1 3 4 5 2 9 8 6 7);
my $count = scalar @stack;
my $i=0;
#my $search;
print("enter the num to search");
my $search = int(<STDIN>);
search:{
do{
	if($stack[$i] == $search)
	{
		print("num $search found at position $i");
		last;     # last statement works as 'break statement' of C lang. it can not use to exit fromn if and elsif block.
	}
	$i++;
}until($i == $count);
}