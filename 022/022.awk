BEGIN { RS=","; }
{
	# usage: awk -f 022.awk names.txt
	gsub("\"", "", $1);
	names[NR] = $1;
}

END {
	letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	asort(names);
	out = 0;
	for (i = 1; i <= length(names); i++) {
		for (j = 1; j <= length(names[i]); j++) {
#			print(i,j,names[i],substr(names[i],j,1),index(letters, substr(names[i],j,1)));
			out += i*index(letters, substr(names[i],j,1));
		}
	}
	print(out);
}
