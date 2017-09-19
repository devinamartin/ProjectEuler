#Devin Martin
#Perl Solution
#Project Euler Problem: 6
#The sum of the squares of the first ten natural numbers is,
#
#1^2 + 2^2 + ... + 10^2 = 385
#
#The square of the sum of the first ten natural numbers is,
#
#(1 + 2 + ... + 10)^2 = 552 = 3025
#
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#

use strict;
use warnings;

my $result = squareofsums(100)-sumsquares(100);	
print "$result\n";

sub sumsquares{
	my $sum = 0;
	for (1..$_[0]){
		$sum += $_**2;
		}
    return $sum;
}

sub squareofsums{
	my $sum = 0;
	for (1..$_[0]){
		$sum += $_;
		}
	$sum = $sum**2;
    return $sum;
}
