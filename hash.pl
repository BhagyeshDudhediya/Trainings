#!/usr/bin/perl
use warnings;
use strict;

my %langs = (England => 'English',
 France => 'French', 
 Spain => 'Spanish', 
 China => 'Chinese', 
 Germany => 'German');
 
 my $lang = $langs{'France'};
 print($lang,"\n");
 
 $langs{'Italy'} = 'Italian'; # add new key/val pair in hash 
 delete $langs{'China'}; #remove key from hash use 'delete '
 
 $langs{'India'} = 'Hindi';
 
 
 #for looping over on Hash use key() function
 
 for(keys %langs)
 {
 	print("language of $_ is  $langs{$_}\n"); # use special variable "$_" to get the value of each key return by keys() function
 }
 