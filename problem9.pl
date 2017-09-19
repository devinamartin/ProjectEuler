#Devin Martin
#Perl Solution
#Project Euler Problem: 9
#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

#a^2 + b^2 = c^2
#For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.
#

use strict;
use warnings;

foreach my $a (1..1000){
	foreach my $b ($a..1000){
		my $c = 1000 - $a - $b;
		if ($a**2 + $b**2 == $c**2 && $a+$b+$c == 1000){
			print "$a^2 + $b^2 = $c^2 and a+b+c = 1000\n";
			print "abc = ", $a*$b*$c, "\n";
		}
	}	
}

