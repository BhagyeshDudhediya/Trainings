use strict;
use warnings;

BEGIN{
	push @INC, 'C:\Users\Malic\eclipse-workspace\Training';
}

use Emp;


my $Emp_obj = eval{new Emp();} or die ($@);


$Emp_obj->firstname("Chirag");
$Emp_obj->lastname("Mali");
$Emp_obj->id("1157045");
$Emp_obj->title("Software Engineer 2");


$Emp_obj->print();



