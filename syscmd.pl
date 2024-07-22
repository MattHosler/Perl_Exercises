#syscmd.pl - Try using system commands in perl

#system('/usr/games/fortune');


$fortune = `/usr/games/fortune`;

print $fortune;
