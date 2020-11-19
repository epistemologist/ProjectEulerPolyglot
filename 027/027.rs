fn is_prime(x: i32) -> bool {
	return match x {
		y if y <= 1 => false,
		2 => true,
		_ => {
			let sqrt_x: i32 = 1 + (x as f64).sqrt() as i32;
			(2..sqrt_x).filter(|y| x % y == 0).collect::<Vec<_>>().len() == 0
		}
	}
}

fn main() {
	let mut out = 0;
	let mut max_prime_count = 0;
	for a in -999..999 {
		for b in -1000..1000 {
			if !is_prime(b) {
				continue;
			}
			let mut n = 0;
			loop {
				if !is_prime(n*n+a*n+b) {
					break;
				}
				n += 1;
			}
			if n > max_prime_count {
				max_prime_count = n;
//				println!("{} {} {}", a,b,n);
				out = a*b;
			}
		}
	}
	println!("{}", out);
}
