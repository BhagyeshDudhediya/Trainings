#!/usr/bin/perl
use warnings;
use strict;

my $src = "demo2.txt";
my $des = "demo1.txt";

open(FH1,'<',$src) or die $!;
open(FH2,'>',$des) or die $!;

while(<FH1>){
	print FH2 $_;
}

print("successfully copied file!!!");