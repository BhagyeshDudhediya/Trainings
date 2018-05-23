#!/usr/bin/perl
use warnings;
use strict;

print("enter the no of candles on cake: ");
my $no_of_candles = <STDIN>;

print("enter the height of each candle: ");
my $i=0;
my @candle_height;
my $temp;
while($i < $no_of_candles){
	$temp = <STDIN>;
	push(@candle_height,$temp);
	$i++;
	
}
my $max_val = $candle_height[0];
my $max_count = 1;
$i = 1;
while($i < $no_of_candles){
	if($max_val < $candle_height[$i]){
		$max_val = $candle_height[$i];
	}
	elsif($max_val == $candle_height[$i]){
		$max_count++;
	}
	$i++;
}
print("output is $max_count");