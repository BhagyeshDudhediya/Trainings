#!/usr/bin/perl
use warnings;
use strict;

my $my_file = "demo.txt";

open(FH,'<',$my_file) or die $!;  # OPEN Fun to open the file. '<' to read , '>' to write, '>>' to append mode

while(<FH>){
	print($_);
}

close(FH);
