# perlex2.pl - Extract short words from english.sorted.

# $_ is the default perl variable
$shortlen= 7;

while (<STDIN>)
{
	
	chomp($_); # Apply chomp to Perl's default variable $_ (the current word)
	
	if (length($_) <= $shortlen)
	{
		print "$_\n";
	}
	
	#Use regular expression match (the hard way):
	if ($_ =~ /.{1,7} /) #Between 1 and 7 of any character
	{
		print "$_\n";
	}
	
}
