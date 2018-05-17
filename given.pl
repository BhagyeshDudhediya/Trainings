use v5.10; 
use feature "switch";
use warnings;
use strict;
no if $] >= 5.018, warnings => "experimental::smartmatch";

my $color;
my $code;

$color = <STDIN>;
chomp($color);

$color = uc($color);

#given is like Switch statement in C/C++ lang.
given($color){
	when('RED'){$code = '#ff0000';}
	when('GREEN'){$code = '#00ff00';}
	when('BLUE'){$code = '#0000ff';}
	default {$code = '';}
}

if($code ne '')
{
	print("$color code is $code");
}
else{
	print("$color is not RGB color");
}

print("enter something..");
chomp(my $input = <>);

print do{
	
	given($input){
		"the input has numbers\n" when /\d/;
		"the input has alphabets\n" when /[a-zA-Z]/;
		default {"neither number nor alphabets"};
	}
}
