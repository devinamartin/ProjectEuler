#Devin Martin
#Perl Solution
#Project Euler Problem: 3
#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
#What is the 10 001st prime number?
#

use strict;
use warnings;
sub primelist{
	my ($max)= @_; 
	my @primes= ();
	my @tested= (1);
	my $j= 1;
	while ($j < $max) {
  		next if $tested[$j++];
   		push @primes, $j;
   		for (my $k= $j; $k <= $max; $k+=$j) {
      		$tested[$k-1]= 1;
   		}
	}
return @primes;
}

my $prime = primelist(10001)[-1];
print "\n$prime is the largest factor of 600851475143";
