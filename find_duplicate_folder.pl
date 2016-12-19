#!/usr/bin/perl 

use strict;

my $file = "output_subfolders";
open (FH, "< $file") or die "Can't open $file for read: $!";
my @lines;
while (<FH>) {
    push (@lines, $_);
}
close FH or die "Cannot close $file: $!";
print "printing lines...\n";
print @lines;   

print "SOME THIIINGSSSS";
print "\n";


for my $i (0..$#lines){

	print "\n";
	for my $j (0..$#lines){
	 if ($lines[$i] eq  $lines[$j]){
		print "Skip-same directories...\n";
	}else{	
	#print "comparing  $lines[$i] with $lines[$j] \n";
	if ( substr($lines[$i], 19)  eq substr($lines[$j], 19)){
		print "matched found at subfolders: $lines[$i] and $lines[$j]";

	}else{
				print "no match!\n";
				}
		}
	}
	
}

