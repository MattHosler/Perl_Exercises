#regexp.pl - Try regular expression matching and substitutions 

$var = "Alpaugh, Weldon, s0396012\@monmouth.edu";

print "Match!\n" if $var =~ / *, */;
print "Match!\n" if $var =~ /s[0-9][0-9][0-9][0-9][0-9][0-9][0-9]/;
print "Match!\n" if $var =~ /^A/;
print "Match!\n" if $var =~ /edu$/;
print "Match!\n" if $var =~ /^W/; #Not a match
print "Match!\n" if $var =~ /^.*, W/;

$var =~ s/Weldon/Doug/;
print $var, "\n";
#$var =~ s/^.*, //; #Deletes everything except the email address
#$var =~ s/^.*?, //; #Deletes everything up to the first name.
print $var, "\n";
$var =~ s/,.*$//;	#Deletes everything after comma to end. 
print $var, "\n";
