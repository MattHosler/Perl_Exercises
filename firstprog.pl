# firstprog.pl-First Program in Perl
#to run its perl -w firstprog.pl

print "Hello, World\n\n"; # an inline comment
print "0.25" * 4, "\n"; # output: 1
print "0.25" * 3, "\n"; # output: .75

print "ba". "na" x 4, "\n";

$name = "fred"; # variables are dynamically typed 
print "my name is ", $name, "\n";

#Start a block (loop or subroutine)

{
	my $name = "Joe"; #Declare $name to be local to this block.
	print "My name in the block is $name\n";
	# Using double quotes allows $name interpolation as
	# part of the print statement.
}

#STDIN - scanner(java), cin (C++)
#STDOUT- system.out(java), cout (C++)


print "Please enter something interesting: \n";
$comment = <STDIN>;
print "You entered $comment";
print "What you entered is ", length($comment), " chars long. \n";
chomp($comment); # Remove trailing newline char.
print "What you entered is ", length($comment), " chars long. \n";

foreach $number (1..10) {
	print "The number is: $number\n";
}

