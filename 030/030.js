ans=[...Array(1000000).keys()]
		.filter(x => 
			x == Array.from(String(x), Number)
				.map(y => y**5).reduce((a,b) => a+b)
				).reduce((a,b) => a+b) - 1

console.log(ans);
