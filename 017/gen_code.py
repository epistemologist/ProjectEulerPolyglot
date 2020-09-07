
def helper(num):
    if num == 0: return "Zero"
    num = int(num)
    ones = ["", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    if 1 <= num < 10: return ones[num]
    teens = ["Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
    if 10 <= num < 20: return teens[num-10]
    tens = [None, None, "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
    if 20 <= num < 100:
        return (tens[num//10] + " " + ones[num%10]).rstrip()
    hundreds = [""] + [i + " Hundred" for i in ones[1:]]
    if 100 <= num < 1000:
        return (hundreds[num//100] + " " + (helper(num%100) if num%100!=0 else "")).strip()
    if 1000 <= num < 1000000:
        return (helper(num//1000) + " Thousand " + (helper(num%1000) if num%1000!=0 else "")).strip()
    if 1000000 <= num < 1000000000:
        return (helper(num//1e6) + " Million " + (helper(num%1e6) if num%1e6!=0 else "")).strip()
    if 1000000000 <= num < 1000000000000:
        return (helper(num//1e9) + " Billion " + (helper(num%1e9) if num%1e9!=0 else "")).strip()
    if 1000000000000 <= num < 1000000000000000:
        return (helper(num//1e12) + " Trillion " + (helper(num%1e12) if num%1e12!=0 else "")).strip()
code_block = lambda num, length: """
if (x == %s) {
  return %s;
}
""" % (str(num), str(length))
for i in range(100):
	print(code_block(i, len(helper(i).replace(" ",""))))

