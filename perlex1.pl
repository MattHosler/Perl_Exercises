# perlex1.pl - count word lengths in english.sorted


# 1- Read each line from standard input(< english.sorted)
while ( $word = <STDIN> )
{
	# 2 - Get Length of each word that we read. 
	$length = length($word) -1; #Subtract 1 because of include newline char.
	#alternatively, could have done this: $length = chomp($word);
	
	#3- Increment correct word length array element using $length.
	$wordlengths[$length]++; # @wordlengths array being created "on-the-fly".
	
}
#4- print the word length array elements
print "Word length \t\t Occurrences \n\n";

for (my $i = 1; $i <= $#wordlengths; $i++){
	if(not exists $wordlengths[$i])
	{
		print "$i \t\t\t 0 \n";
	}
	else
	{
	print "$i \t\t\t $wordlengths[$i] \n";
	}
}
