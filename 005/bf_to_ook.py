program = input()
out = ""
conversion_table = {
					">":"Ook. Ook? ",
					"<":"Ook? Ook. ",
					"+":"Ook. Ook. ",
					"-":"Ook! Ook! ",
					".":"Ook! Ook. ",
					",":"Ook. Ook! ",
					"[":"Ook! Ook? ",
					"]":"Ook? Ook! "
				   }
for char in program:
	if char in conversion_table: out += conversion_table[char]
print(out)
