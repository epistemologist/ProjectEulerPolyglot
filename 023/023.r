abundant <- function(n) {
	out <- 0
	for (i in 1:sqrt(n)) {
		if (n %% i == 0) {
			out <- out + i;
			out <- out + if(n %/% i != i && n %/% i != n) n %/% i else 0;
		}
	}
	return(out > n)
}

nums <- c()
for (i in 1:20161) {
	if (abundant(i)) {
		nums <- c(nums, i);
	}
}

binary_search = function(n) {
	L <- 1;
	R <- length(nums);
	while (L <= R) {
		m <- (L+R) %/% 2;
		if (nums[m] < n) {
			L <- m+1;
		} else if (nums[m] > n) {
			R <- m-1;
		} else {
			return(TRUE);
		}
	}
	return(FALSE);
}

is_sum = function(n) {
	for (i in nums) {
		if (i>n) {
			break;
		}
		if (binary_search(n-i)) {
			return(TRUE);
		}
	}
	return(FALSE);
}

out <- 0;
for (j in 20161:1) {
	if (!is_sum(j)) {
		out <- out + j;
	}
}

print(out);
