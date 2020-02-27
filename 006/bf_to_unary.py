program = input()
translation_table = {
						">":"000",
						"<":"001",
						"+":"010",
						"-":"011",
						".":"100",
						",":"101",
						"[":"110",
						"]":"111"
					}
out = "1"
for char in program:
	if char in translation_table: out += translation_table[char]
#print(out)
print(int(out,2))
