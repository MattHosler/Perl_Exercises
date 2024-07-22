#perlex4.pl - Read roster into a hash

while ( $studentline = <STDIN> )
{
	($last, $first, $email) = split /, /, $studentline;
	# Use ", " as a field delimiter to split $studentline
	# into last, first and email fields. 
	
	# Insert student into %roster hash with full name as the key;
	$roster{ "$first $last" } = $email;
}
#print the roster hash;
foreach $name (sort keys %roster)
{
	print "$name, $roster{$name}"; # print fullname, email
	}
