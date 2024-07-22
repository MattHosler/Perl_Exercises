#subroutines.pl - Test subrouthines in perl
greet( "jim", "bob", "russ");


sub greet{
	foreach my $arg ( @_) 
	{
		print "Hello $arg!\n;
	}
	
	print "you're first, $_[ 0 ].\n";
	print "you're second, $_[ 1 ].\n";
	print "you're last, $_[ 2 ].\n";
}
