# perlex6.pl - Read entire roster file into a string var

#open a file 
open FILE, "<roster.txt";
$roster = do { local $/; <FILE> };
	
	print $roster;


#Read all student ids into @ids.
@ids = $roster =~ /s[0-9]{7}/g;
				 #/s[0-9]{7} ---> Matches a student id
				 #			g --> "global", i.e., match all ids in $roster
print "@ids\n";
