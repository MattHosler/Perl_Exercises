#perlex7.pl - Extract headlines an danchor names from index.html (CSSE news)

open FILE, "<index.html";
$news = do { local $/; <FILE> }; # $news contains all of index.html

#read all teh headlines into @headlines:
@headlines = $news  =~ /<strong>(.+)<\/strong>/g;
			# Each headline is (.+), between <strong> and </strong>
			# Need to use () to exclude <strong> tags in match.
			# Must use \ in front of / in </strong>.
			
#Display headlines:
foreach my $h1 ( @headlines ) {
		print "$h1\n";
}
 print "There are ", $#headlines +1, "headlines,\n";

#Read all anchor names into @anames:
@anames = $news =~/<a class="anchorMargin" name="(.+)"> /g;
print "@anames\n";
print "There are ", $#anames +1, "headlines,\n"
