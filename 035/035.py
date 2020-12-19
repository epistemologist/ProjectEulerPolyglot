def is_prime(n):
	if n < 2: return False
	if n == 2: return True
	for i in range(2, int(n**0.5)+1):
		if n%i==0: return False
	return True

def gen_all_rotations(s):
	return [s[i:] + s[:i] for i in range(len(s))]

primes = set([i for i in range(1000000) if is_prime(i)])
out = 0
for p in sorted(primes):
	if all([int(i) in primes for i in gen_all_rotations(str(p))]):
		out += 1
print(out)
