#!/usr/bin/perl
use warnings;
use strict;

sub sum{
	
	my $total = 0;
	for my $i(@_){			# '@_' is used to access the paramenters passed to subroutine
		$total += $i;
	}
	return $total;
}

print &sum(1..10);

print &say_hi , "\n";
sub say_hi{
    my $name = 'Bob';
    print "Hi $name \n";
    $name;					# implicitly retruning the value
}


# use of 'defined' in subroutine

my @a = ();
my $j = min(@a);
 
if(defined $j){
   print("Min of @a is $j \n");
}else{
   print("The array is empty.\n");
}
 
my @b = (100,12,31);
my $k = min(@b);
 
if(defined $k){
  print("Min of @b is $k \n");
}else{
   print("The array b is empty.\n");
}
 
sub min{
   my $m = shift;
   return undef unless defined $m;
   for (@_){
      $m = $_ if $m > $_;
   }
   return $m;
}

