# perlex5.pl - Process roster using subroutines and command line args.

sub help {
	# Using a Perl "heredoc":
	$message = <<"END_MSG";	#could also have just "

	
	Usage:  perl -w perlex5.pl <option> rostefile

			where <option> is one of the followeing:
			
			-help:	display this help
			-first:	sort by first name
			-last:	sort by last name
			-id:	sort by id
END_MSG
} #end help or replace the end msg with " for multi line string 
help();
# Add student to roster
# Frist param determines sort order.
# Input arguments: 0-sort order, 1-first name, 2-last name, 3-id
sub addstudent{
	# Get sort order from first argument in @_:
	my $sortby = $_[0];
	
	if ($sortby =~ /-f/) {
		$student2add = "$_[1] $_[2] $_[3]"; # first last id
	}
		else if ($sortby =~ /-1/) {
		$student2add = "$_[2] $_[1] $_[3]"; # last first id
	}
	else {
		$student2add = "$_[3] $_[1] $_[2]"; # id first last
	}	

	push @roster, $student2add;
} #end addstudent()

#######End of subroutines#######
# Run help() if not enough  command line args or if 1st arg contain -h:

$numargs = $#ARGV +1;
if ($numargs<2 || $ARGV[0] =~ /-h/){
	help();
	exit(1); #non-zero exit status means an error
}

# Get sortby argumet from first command line arg:
my $sortby = shift @ARGV;

while ($studentline = <>) {
	($last, $first, $id) = split /\s*, \s*/, $studentline;
	chomp($id); #id field has a newline; remove it 
	addstudent($sortby, $first, $last, $id);
}

#print roster
foreach $student (sort @roster ) {
	print "$student\n";
}
