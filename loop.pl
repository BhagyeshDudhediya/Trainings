#!/usr/bin/perl
use warnings;
use strict;

#foreach loop in perl
my @a = (1..9);
foreach(@a){
	print("$_\n");
}

#while loop

my $num;
my @numbers = ();

print("numbers:\n");
print("press ctrl+z to exit");

while(my $input = <>) #use of Dimond Operator(<>) to get the input from user
{
	chomp($input);
	$num = int($input);
	push(@numbers,$num);
}

print("enterd numbers are @numbers");

