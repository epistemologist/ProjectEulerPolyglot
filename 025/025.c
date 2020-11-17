#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#define LENGTH 1000*sizeof(int)
int* add(int* a, int* b) {
	int * out = malloc(1000*sizeof(int));
	// Add corresponding digits
	for (int i = 999; i >= 0; i--) {
		out[i] = a[i]+b[i];
	}
	// Propogate carries
	for (int i = 999; i > 0; i--) {
		if (out[i] >= 10) {
			out[i] -= 10;
			out[i-1] += 1;
		}
	}
	return out;
}

void next_fib(int* a, int* b, int* temp) {
	memcpy(temp, add(a,b), LENGTH);
	memcpy(a,b, LENGTH);
	memcpy(b, temp, LENGTH);
}

int main() {
	int a[1000] = {0};
	int b[1000] = {0};
	int temp[1000];
	for (int i = 0; i < 1000; i++) {
		a[i] = 0;
		b[i] = 0;
	}
	a[999] = 1;
	b[999] = 1;
	int out = 1;
	while(a[0] == 0) {
		next_fib(&a, &b, &temp);
		/*
		for (int i = 0; i < 1000; i++) {
			printf("%d", a[i]);
		}
		printf("\n");
		*/
		out++;
	}
	printf("%d\n", out);
	return 0;
}

