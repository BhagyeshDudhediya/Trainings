package filelogger_module;

use strict;
use warnings;

my $LEVEL = 1; #default level

sub open{
	my $logfile = shift;
	open(FH,'>>',$logfile) or die "can not open logfile...";
	print FH "Time: ", scalar(localtime), "\n";
}


sub log{
	my ($log_level,$log_msg) = @_;
	if($log_level <= $LEVEL){
		print FH "$log_msg\n";
	}
}

sub close{
	close FH;
}

sub set_level{
	
	my $log_level = shift;
	if($log_level =~ /^\d+$/){
		$LEVEL = $log_level;
	}
	
}

1;