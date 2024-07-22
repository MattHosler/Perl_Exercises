# commandLineArgs.pl - Use command line arguments with <>

while (<>) {
	print $_;
}
 print "@ARGV\n"; #Empty @ARGV at end of program, so no output.
