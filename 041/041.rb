def is_prime(n)
	if n<=2
		n==2
	else
		for i in 2..(n**0.5)
			if n%i==0
				return false
			end
		end
		return true
	end
end

max_p = 0
for num_digits in 9.downto(1)
	next if num_digits % 3 == 0
	for perm in (1..num_digits).to_a.permutation(num_digits)
		curr_p = perm.join.to_i
		if is_prime(curr_p) and max_p < curr_p
			max_p = curr_p
		end
	end
end

puts max_p
