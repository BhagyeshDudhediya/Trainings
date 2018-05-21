#!/usr/bin/perl
use warnings;
use strict;

use Data::Dumper;
print("enter the no of students:");
my $no_of_student = <STDIN>;

my $name;
my $roll_no;
my $marks;

my @students_info;

my $i = 0;

while($i < $no_of_student){
	my %temp;
	
	print("enter name of student");
	$name = <STDIN>;
	
	print("enter roll num of student");
	$roll_no = <STDIN>;
	
	print("enter marks of student");
	$marks = <STDIN>;
	
	$temp{'name'}=$name;
	$temp{'roll_no'}=$roll_no;
	$temp{'marks'}=$marks;
	push(@students_info, \%temp);
	$i++;
	
}
print Dumper \@students_info;

#student information with highest marks
my $temp = 1;
my $max_index = 0;
my $max = $students_info[0]{'marks'};
while($temp < $no_of_student){
	if($max < $students_info[$temp]{'marks'}){
		$max = $students_info[$temp]{'marks'};
		$max_index = $temp;
	}
	$temp++;
}

print("Student with highest marks: ");
print Dumper \$students_info[$max_index];

#Get data of spectific user

print("enter the name of the student for whose data you want to get: ");
my $input_name = <STDIN>;

$temp = 0;
my $get_data = -1;
while($temp < $no_of_student){
	if($input_name eq $students_info[$temp]{'name'}){
		$get_data = $temp;
		last;
	}
	$temp++;
}
if($get_data == -1){
	print("No data found\n");
}
else{
	print Dumper \$students_info[$get_data];
}

#get data in ascending order of roll number

my @sorted = sort {$a->{roll_no} <=> $b->{roll_no}} @students_info;

print("student information in the ascending order of their roll numbers:\n");
print Dumper \@sorted;