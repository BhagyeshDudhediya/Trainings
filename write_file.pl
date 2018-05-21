#!/usr/bin/perl
use warnings;
use strict;

my $write_file = "demo1.txt";

my $str = <<END;
This is the sample text
that is used to write to file.
If file has content then it will wipe out that content...
END

open(FH,'>',$write_file) or die $!;

print FH $str;

close(FH);

print("successfully written the file!!");