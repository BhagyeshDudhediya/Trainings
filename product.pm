package product;

use strict;
use warnings;

sub new{
	
	my($class,$args) = @_;
	my $self = bless {					#bless method associates a reference with a package
		serial => $args->{serial},
		name => $args->{name},
		price => $args->{price}
	}, $class;
}

sub get_serial{
	my $self = shift;
	return $self->{serial};
}

sub set_serial{
	my($self,$new_serial) = @_;
	$self->{serail} = $new_serial;
}

sub get_name{
	my $self = shift;
	print "$self->{name}";
	return $self->{name};
}

sub set_name{
	my($self,$new_name) = @_;
	$self->{name} = $new_name;
}

sub get_price{
	my $self = shift;
	return $self->{price};
}

sub set_price{
	my($self,$new_price) = @_;
	$self->{price} = $new_price;
}

sub to_string{
	my $self = shift;
	print "Serial: $self->{serial}\nName: $self->{name}\nPrice: $self->{price}\n";
}

1;


