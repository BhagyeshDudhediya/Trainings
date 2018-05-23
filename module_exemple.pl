use strict;
use warnings;
use Data::Dumper;

# add module to @INC using BEGIN block then only one can use that module..

BEGIN{								
	push @INC,'C:\Users\Malic\eclipse-workspace\Training'
}
use filelogger_module;


filelogger_module::open("demo.txt");
filelogger_module::log(1,"hi this is tesr log..");
filelogger_module::close();
print ("successfully Done!!");