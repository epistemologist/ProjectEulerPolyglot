function left_truncate(x)
	out = Int64[]
	while x > 0
		push!(out, x)
		x = div(x,10)
	end
	out
end

function right_truncate(x)
	n = length(string(x))
	parse.(Int, [string(x)[n-i+1:n] for i ∈	 n:-1:1])
end

function prime_generate(n)
	A = trues(n-1)
	for i in 2:Int(floor(sqrt(n)))
		if A[i-1]
			for j in i*i:i:n
				A[j-1] = false
			end
		end
	end
	return map(x -> x+1, findall(A))
end

primes = prime_generate(1000000)
prime_set = Set(primes)
out = 0
for p in primes
	candidate = true
	for i in vcat(left_truncate(p), right_truncate(p))
		if i ∉ prime_set
			candidate = false
		end
	end
	if candidate && p > 10
		global out += p
	end
end

println(out)

