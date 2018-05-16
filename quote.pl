#!/usr/bin/perl
use warnings;
use strict;
 
my $s= q/"Are you learning Perl String today?" We asked./;
print($s ,"\n");
 
my $name = 'Jack';
my $s2 = qq/"Are you learning Perl String today?"$name asked./;
print($s2 ,"\n");

my $s1;
chomp($s1 = <STDIN>);
print $s1;