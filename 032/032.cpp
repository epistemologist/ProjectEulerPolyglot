#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
#include <cmath>
#include <unordered_set>
using namespace std;

// For debugging purposes
void display(vector<int> arr) {
	for (int i:arr){
		std::cout << i << " ";
	}
	std::cout << std::endl;
}

int main() {
	vector<int> arr(9);
	unordered_set<int> products;
	for (int i = 1; i < 10; i++) {
		arr[i-1] = i;
	}
	do {
		// Form all products of form A*B=C
		for (int i = 1; i < 9; i++) {
			for (int j = i+1; j < 9; j++) {
				int A = 0;
				int B = 0;
				int C = 0;
				for (int k = 0; k < 9; k++) {
					if (k < i) {
						A *= 10;
						A += arr[k];
					} else if (k < j) {
						B *= 10;
						B += arr[k];
					} else {
						C *= 10;
						C += arr[k];
					}
				}
				if (A*B == C) {
					products.insert(C);
				}
			}
		}
//		display(arr);
	} while (next_permutation(arr.begin(), arr.end()));
	int out = 0;
	for (int i: products) {
		out += i;
	}
	std::cout << out << std::endl;
	return 0;
}

