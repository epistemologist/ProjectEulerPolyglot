<?php

function gcd($a, $b) {
	return $b ? gcd($b, $a % $b) : $a;
}

function cancellable($p, $q) {
	$p1 = intdiv($p, 10);
	$p2 = $p % 10;
	$q1 = intdiv($q, 10);
	$q2 = $q % 10;
	return ($p1 * $p2 * $q1 * $q2 != 0) and
		($p*$q1 == $q*$p2 && $q2 == $p1) ||
		($p*$q2 == $q*$p1 && $q1 == $p2) ||
		($p*$q1 == $q*$p1 && $q2 == $p2) || 
		($p*$q2 == $q*$p2 && $q1 == $p1) ;
}

// Loop through all possible fractions
$num = 1;
$den = 1;
for ($p = 10; $p < 100; $p++) {
	for ($q = $p+1; $q < 100; $q++) {
		if (cancellable($p, $q)) {
			$num *= $p;
			$den *= $q;
		}
	}
}
echo $den / gcd($num, $den), "\n";
?>
