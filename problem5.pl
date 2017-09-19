#Devin Martin
#Perl Solution
#Project Euler Problem: 5
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

use strict;
use warnings;

my $result = 1;
foreach (1..20){
	$result = lcd($result,$_);
}
	
print "$result\n";

sub lcd {
	my($m,$n) = @_;
    my $gcd = gcd($m,$n);
    return $m*$n/$gcd;
}
    
sub gcd {
    my($a,$b) = @_;
    return $a if $b == 0;
    if($b > $a){
        gcd($b,$a);
    }else{
	$a = $a % $b;
	gcd($b,$a);
	}
}

