package Person;

use strict;
use warnings;

#constructor of Person class

sub new{
	my ($class) = @_;
	my $self = {
		_first_name => undef,
		_last_name => undef
	};
	bless $self, $class;
	return $self;
}

sub firstname{
	my ($self,$first_name) = @_;
	$self->{_first_name} = $first_name if defined($first_name);
	return $self->{_first_name};
}

sub lastname{
	my ($self,$last_name) = @_;
	$self->{_last_name} = $last_name if defined ($last_name);
	return $self->{_last_name};
}

sub print_fullname{
	my ($self) = @_;
	print "Name: $self->{_first_name} $self->{_last_name} \n"; 
	print "ID: $self->{_id} and Title: $self->{_title}\n";
}

1;