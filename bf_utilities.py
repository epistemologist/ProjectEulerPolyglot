def swap(x,y,temp):
	# assuming the pointer starts at temp
	f = lambda n: ">"*n if n>0 else "<"*abs(n)
	return "[-]"+f(x-temp)+"[-]"+f(y-x)+"["+f(x-y)+"+"+f(temp-x)+"+"+f(y-temp)+"-]"+f(temp-y)+"["+f(y-temp)+"+"+f(temp-y)+"-]"

print(swap(2,8,7))
