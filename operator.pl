#!/usr/bin/perl
use warnings;
use strict;

my $a = 10;
my $b = 20;
 
print $a <=> $b, "\n"; #spaceship operator
 
$b = 10;
print $a <=> $b, "\n";
 
$b = 5;
print $a <=> $b, "\n";