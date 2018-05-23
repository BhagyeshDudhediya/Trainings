use strict;
use warnings;

BEGIN{
	push @INC, 'C:\Users\Malic\eclipse-workspace\Training';
}

use product;

my $iphone = product->new({
	serial => '100',name => 'iPhone', price=>500
});

my $Mi = product->new({
	serial => '200',name => 'Mi Note 4', price=>200
});


$iphone->to_string();
$Mi -> to_string();

$iphone->get_name();
$iphone->set_name('iphone 7');
$iphone->get_name();
$iphone->to_string();