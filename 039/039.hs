import Data.List
import Data.Maybe

numSolutions :: Integer -> Int
numSolutions p = length $ filter pythagorean [(a,b,p-a-b)| a<-[1..p-1], b<-[1..a `div` 2], p-a-b>0]
--numSolutions p = do
--	let out = [(a,b,p-a-b) | a<-[1..p-1], b<-[1..a `div` 2]]
--	let outPos = filter pythagorean out
--	length$ filter pythagorean outPos

pythagorean :: (Integer, Integer, Integer) -> Bool
pythagorean (a,b,c) = (&&) (c > 0) (a*a+b*b==c*c)

main = do
	let vals = [numSolutions a | a <- [1..1000]]
	let index = fromJust $ elemIndex (maximum vals) vals
	print $ index+1
