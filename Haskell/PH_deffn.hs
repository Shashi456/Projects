-- haskell allows one to define conditional in functions
-- for eg; the absolute function
-- this is in the if-then-else format
abs n = if n >= 0 then n else -n 
-- nested conditionals are allowed as well 
signum n = if n < 0 then -1 else if n == 0 then 0 else 1
-- In haskell, it is mandatory to always have an else branch so as to
-- avoid the dangling else problem


-- A somewhat mathematical operator, a guard operator is also available in haskell
-- can be thought of a weaker version of the switch case function with otherwise
-- being akin to default 

abs n | n >=0 = n 
      | otherwise = -n


-- something about lists 
-- a list one [1,2,3] can be thought of as 
1: 2: 3: []
-- originally written as 
1: (2: (3: []))
-- but to avoid excessive parantheses, it can be written as the earlier version
-- the constructor operator is assumed to be associated to the right

-- is it because of the association to the right that lists are thought of x:xs,
-- instead of xs:x?

-- the existence of lambda expressions makes reading and writing curried functions 
-- more intuitive, for eg 
add x y = x + y
-- can be also be thought of as 
add = \x -> ( \y -> x + y)
-- that is the add function first takes an x which is passed to another function y, 
-- which then adds both the arguments
-- writing the lambda form also has the additional interpretability of the ? -> (? -> ?)
-- i.e deducing type inference

map (\x -> x*2 + 1) [0..n-1]

halves xs = (take n xs, drop n xs) where n = length xs `div` 2
-- cannot write length xs /2 because integer division truncates and fractional division
-- doesn't. therefore you have to express division as `div`.

mult = \x -> (\y -> (\z -> x*y*z))

luhndouble x = if 2*x > 9 then 2*x - 9 else 2 * x
luhn a b c d = sum[luhndouble a, luhndouble c, b, d] `mod` 10 == 0
-- didnt write it right originally because didnt read 
-- "every other number properly"