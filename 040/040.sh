#!/bin/sh

champernowne=""
for i in $(seq 1 200000)
do
#	echo $i
	champernowne="$champernowne$i"
done

d_1=$(echo $champernowne | head -c 1)
d_10=$(echo $champernowne | head -c 10 | tail -c 1)
d_10=$(echo $champernowne | head -c 10 | tail -c 1)
d_100=$(echo $champernowne | head -c 100 | tail -c 1)
d_1000=$(echo $champernowne | head -c 1000 | tail -c 1)
d_10000=$(echo $champernowne | head -c 10000 | tail -c 1)
d_100000=$(echo $champernowne | head -c 100000 | tail -c 1)
d_1000000=$(echo $champernowne | head -c 1000000 | tail -c 1)

echo $(( d_1 * d_10 * d_100 * d_1000 * d_10000 * d_100000 * d_1000000 ))
