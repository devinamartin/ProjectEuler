#Devin Martin
#Perl Solution
#Project Euler Problem: 4
#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
#Find the largest palindrome made from the product of two 3-digit numbers.
#
use strict;
use warnings;


my @num=100..999;
my $holder = 0;
for my $x (@num) {
	for my $y (@num) {
        my $p=$x*$y;
		if ($p > $holder){
        	if($p eq reverse $p){
				print "$x x $y = $p\n";
				$holder = $p;
    		}	
		}
	}
}
print "$holder\n";                             
