import java.util.Arrays;

public class Problem24 {
	public static int[] reverse(int[] arr, int l, int r) {
		while (l <= r) {
			int temp = arr[l];
			arr[l] = arr[r];
			arr[r] = temp;
			l++;
			r--;
		}
		return arr;
	}

	public static int[] nextPermutation(int[] arr) {
		// Algorithm from https://en.wikipedia.org/wiki/Permutation#Generation_in_lexicographic_order
		int k;
		int l;
		for (k = arr.length-2; k >= 0; k--) {
			if (arr[k] < arr[k+1]) break;
		}
		for (l = arr.length-1; l > k; l--) {
			if (arr[k] < arr[l]) break;
		}
		int temp = arr[k];
		arr[k] = arr[l];
		arr[l] = temp;
		arr = reverse(arr, k+1, arr.length-1);
		return arr;
	}

	public static void main(String[] args) {
		int[] perm = new int[10];
		for (int i = 0; i < 10; i++) {
			perm[i] = i;
		}
		for (int i = 1; i < 1000000; i++) {
			perm = nextPermutation(perm);
		}
		for (int i: perm) {
			System.out.print(i);
		}
		System.out.println();
	}
}
