#!/usr/bin/perl
use warnings;
use strict;

my $s1 = 'Perl regular expression is powerful';
 
print "match found\n" if( $s1 =~ /ul/); # use '=~' operator for regular exp and put string you want to match in between of two forward slash

my @html = (
    '<p>',
    'html fragement',
    '</p>',
    '<br>',
    '<span>This is a span</span>'
 );
 
foreach(@html){
   print("$_ \n") if($_ =~ m"/"); # if you want to match forward slash then use char 'm' ahead of it
}

my $s = "Regular expression";
print "match\n" if $s =~ /Expression/i;    # use char 'i' to match pattern insensitively

my @words = ("available", "avatar", "avalon");
 
foreach(@words){
   print $_, "\n" if(/a*l+/);  # this means zero or more a followed by one or more l
}