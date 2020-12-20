#!/bin/bash
D2B=({0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1}{0..1})
total=0
# Case 1: Odd length palindromes
for i in `seq 1 99`
do
	for n in `seq 0 9`
	do
		j=$(echo "$i" | rev)
		palindrome="$i$n$j"
		bin_string=${D2B[$palindrome]}
		bin=$(echo $bin_string | sed 's/^0*//')
#		echo "$i", "$palindrome","$bin_string",  "$bin"
		if [[ $(echo $bin | rev) == $(echo $bin) ]] && [[ "$palindrome" -lt 1000000 ]]; then 
			echo "$palindrome", "candidate", "$total"
			total=$((total+palindrome));
		fi
	done
done
# Case 2: Even length palindromes
for i in `seq 1 999`
do
	j=$(echo "$i" | rev)
	palindrome="$i$j"
	bin_string=${D2B[$palindrome]}
	bin=$(echo $bin_string | sed 's/^0*//')
#	echo "$i", "$palindrome","$bin_string",  "$bin"
	if [[ $(echo $bin | rev) == $(echo $bin) ]] && [[ "$palindrome" -lt 1000000 ]]; then 
		echo "$palindrome", "candidate", "$total"
		total=$((total+palindrome));
	fi
done
# Case 3: One-decimal digit numbers
for i in `seq 1 9`
do
	palindrome="$i"
	bin_string=${D2B[$palindrome]}
	bin=$(echo $bin_string | sed 's/^0*//')
#	echo "$i", "$palindrome","$bin_string",  "$bin"
	if [[ $(echo $bin | rev) == $(echo $bin) ]] && [[ "$palindrome" -lt 1000000 ]]; then 
		echo "$palindrome", "candidate", "$total"
		total=$((total+palindrome));
	fi
done

echo "$total"
