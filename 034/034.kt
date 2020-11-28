// Compile with kotlinc 034.kt -include-runtime -d out.jar && java -jar out.jar

fun validNumber(n: Int): Boolean {
	val factorialTable = listOf(1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880)
	var temp = n
	var factorialDigitSum = 0;
	while (temp > 0) {
		factorialDigitSum += factorialTable[temp % 10];
		temp /= 10;
	}
	return n == factorialDigitSum;
}


fun main(args: Array<String>) {
	val temp = (3..100000).filter{validNumber(it)}.sum()
	println(temp);
}
