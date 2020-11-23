#include <stdio.h>
int more_asm_like();
int main() {
	int answer = more_asm_like();
	printf("%d\n", answer);
	return 0;
}

int more_asm_like() {
	int ret = 1; // mov eax, 1
	int n = 3; // mov ebx, 3
	int temp; 
start:
//	printf("%d %d %d\n", n, temp, ret );
	ret += 6; // add eax, 6
	temp = n; // mov ecx, ebx
	temp *= 6; // imul ecx, 6
	ret -= temp; // sub eax, ecx
	temp = 4; // mov ecx, 4
	temp *= n; // imul ecx, ebx
	temp *= n; // imul ecx, ebx
	ret += temp; // add eax, ecx
	n += 2; // add ebx, 2
	if (n != 1003) goto start; 
	/*
	cmp ebx, 1003
	jne start
	*/
	return ret;
}

int normal() {
	int out = 1;
	for (int n = 3; n <= 1001; n++) {
		out += 4*n*n-6*n+6;
	}
	printf("%d\n", out);
	return 0;
}
