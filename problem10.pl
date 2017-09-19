#Devin Martin
#Perl Solution
#Project Euler Problem: 10
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
#Find the sum of all the primes below two million.
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

my @primel = primelist(2000000);
my $sum = 0;
foreach my $prime (@primel){
	$sum+=$prime
}

print "$sum\n";
