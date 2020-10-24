--from https://en.wikipedia.org/wiki/Zeller%27s_congruence
function zeller(q, m, y)
  if m < 3 then
    m = m + 12
    y = y - 1
  end
  K = y % 100
  J = y//100
  return (q + (13*(m+1))//5 + K + K//4 + J//4 - 2*J) % 7
end

MONTHS = {31,29,31,30,31,30,31,31,30,31,30,31}
out = 0
for year = 1901, 2000 do
  for month = 1, 12 do
	if zeller(1,month,year)==1 then
	  out = out + 1
	end
  end
end
print(out)
