#!/usr/bin/perl
use warnings;
use strict;

my ($l_curr, $f_curr, $l_amount, $f_amount);
 
my %rates = ( 
     USD => 1,
     YPY => 82.25,
     EUR => 0.78,
     GBP => 0.62,
     CNY => 6.23
);

print("supported currency \n");
for(keys %rates)
{
	print(uc($_));
}

print("local curr:\n");
$l_curr = <STDIN>;
print("foriegn curr:\n");
$f_curr = <STDIN>;
print("local amount:\n");
$l_amount = <STDIN>;

chomp($l_curr,$f_curr,$l_amount);

if(not exists $rates{$l_curr})
{
	print("unsported local currency\n");
}
elsif(not exists $rates{$f_curr})
{
	print("unsuported foriegn currency\n");
}
else{
	
	$f_amount = ($rates{$f_curr}/$rates{$l_curr}) * $l_amount;
	print("$l_amount $l_curr = $f_amount $f_curr \n");
}