import std.stdio;
import std.bigint;
import std.format;
void main(string[] args)
{
    BigInt n = 1;
    for (int i = 1; i <= 100; i++) {
        n *= i;
    }
    int total = 0;
	foreach (i; format("%d", n)) {
		total += i - '0';
	}
	writeln(total);
}

