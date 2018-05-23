package Emp;

use strict;
use warnings;
#BEGIN{
#	push @INC, 'C:\Users\Malic\eclipse-workspace\Training';
#}
#use Person;
#our @ISA, qw(Person);

use base "Person";  # to inherit Person class


sub new{
	my ($class) = @_;
	
	my $self = $class->SUPER::new();
	$self->{_id} = undef;
	$self->{_title} = undef;
	bless $self,$class;
	return $self;
}

sub id{
	my ($self,$id) = @_;
	$self->{_id} = $id if defined($id);
	return $self->{_id};
}

sub title{
	my ($self,$title) = @_;
	$self->{_title} = $title if defined($title);
	return $self->{_title};
}

sub print{
	my ($self) = @_;
	$self->SUPER::print_fullname;
}

1;