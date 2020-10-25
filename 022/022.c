#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#define MAXLENGTH 100000
#define MAXNAMELENGTH 30

int main() {
	// Read in file
	FILE *fp;
	char names_str[MAXLENGTH];
	fp = fopen("names.txt", "r");
	while (fgets(names_str, MAXLENGTH, fp) != NULL);
	fclose(fp);
	// Count the number of names in string
	int num_names = 1;
	for (int i = 0; names_str[i] != 0; i++) {
		if (names_str[i] == ',') {
			num_names++;
		}
	}
	// Split string
	char *ptr = strtok(names_str, ",");
	char *names[num_names];
	char *names_sorted[num_names];
	for (int i = 0; i < num_names; i++) {
		names[i] = ptr;
		names_sorted[i] = ptr;
		ptr = strtok(NULL, ",");
	}

	// Sort the names in names_sorted
	bool swapped = 1;
	while (swapped) {
		swapped = 0;
		for (int i = 1; i < num_names; i++) {
			if (strcmp(names_sorted[i-1], names_sorted[i]) > 0) {
				char *temp = names_sorted[i-1];
				names_sorted[i-1] = names_sorted[i];
				names_sorted[i] = temp;
				swapped = 1;
			}
		}
	}

	long out = 0;
	for (int i = 0; i < num_names; i++) {
		int temp = 0;
		char *current_name = names_sorted[i];
		for (int j = 0; j < strlen(current_name); j++) {
			if ('A' <= current_name[j] && current_name[j] < 'Z') {
				temp += (i+1) * (current_name[j] - 'A' + 1);
			}
		}
		out += temp;
	}
	printf("%ld\n", out);
	return 0;
}
