main() {
	extrn d;
	auto a, b, total;
	a = 1;
	total = 0;
	while (a < 10000) {
		b = d(a);
		if (a != b) {
			if (d(b) == a) {
				total = total + a;
			}
		}
		a++;
	}
	printn(total);
}

d(n) {
	auto i, total;
	i = 2;
	total = 1;
	while (i*i <= n) {
		if (n % i == 0) {
			total = total + i;
			if (n / i != i && n/i != n) {
				total = total + n/i;
			}
		}
		i++;
	}
	total;
}
/* 
taken from the original manual by Ken Thompson
*/
printn(n) {
	extrn putchar;
	auto a;

	if(a=n/10) /* assignment, not test for equality */
		printn(a); /* recursive */
	putchar(n%10 + '0');
}
