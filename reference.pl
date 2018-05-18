#!/usr/bin/perl
use warnings;
use strict;

my $x = 10;

my $xr = \$x; # to declare reference use "backslash"
 
$$xr = $$xr * 10;  # to dereference it use $ ahead of scalar, @ ahead of array, % ahead of hash and & ahead of subroutine 

print("$x \n");
print("$$xr \n");

my @a = (1..5);

my $ar = \@a; # reference to array 
my $i =0;
for(@$ar){						# derefernecing ar using @ ahead of it as it is refering to array
	print("$ar->[$i]\n");
	printf("${$ar}[$i++]\n");
}

my %months= ( Jan => 1,
       Feb => 2,
       Mar => 3,
       Apr => 4,
       May => 5,  
       Jun => 6,
       Jul => 7,
       Aug => 8,
       Sep => 9,
       Oct => 10,
       Nov => 11,
       Dec => 12);
 
my $monthr = \%months;    # reference to hash
 
for(keys %$monthr){						#dereference using % as it is refering to hash
    print("$_  = $monthr->{$_}\n");
}