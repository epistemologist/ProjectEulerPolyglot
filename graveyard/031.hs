countWays :: Integer -> [Integer] -> Integer
countWays n [] = 0
countWays n list@(l:ls)
	| n == 1 = 1
	| n < 0 = 0
	| otherwise = (countWays n ls) + (countWays (n-l) list)

main :: IO()
main = print (countWays 200 [1,2,5,10,20,50,100,200])
