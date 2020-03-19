-- A function in haskell is  a mapping taking one or more arguments and producing 
-- a single result. { The following doesnt compile yet }.
-- Another interpretation of this as given in the textbook is that, first 
-- the argument replaces the arguments in the function , and then the plus sign is 
-- applied . 
double x = x + x 
double 3 -- Output will be 6  
-- Functions can also be passed to other functions 
double (double x) -- is a valid expression 
quadruple x = double (double x) -- is also a valid function, here 
-- quadruple has an argument x and then is passed to double 
-- which is then passed to double, Interesting to think of it as function coupling.
-- This idea of functions is derived from lambda calculus . 
-- Lambda functions have a head and a body. 
-- For example L x . x , where L is the function name, x is the argument, .
-- is the separator from the argument and the body and x is the body. 
-- Alpha Equivalence and Beta reduction. 
-- The process of beta reduction stops when, there are no more lambdas to apply.  
-- Applications in lambda calculus are left associative. 


sum [1..n] -- is the coupling of two functions where in [1..n] returns a list of numbers 
-- from 1 to n and sum reduces this list. This can again be seen at the earlier thought,
-- function applied to arguments, sum function is being applied to the list argument. 

-- Breaking down the sum function and writing it on my own. 
-- First the base case 
sum [] = 0 ; sum (n:ns) = n + sum ns -- Has to be written in same line. 
-- The way you can think about it is as follows, sum [] = 0 is the base case of when the list is empty, while in sum (n:ns), represents the list addition. Think of Ns as a list of number. So first take one n from the ns, and then add it, and then sum the remaining ns. 
-- Similarly writing the factorial function you get: 
fact 1 = 1; fact x = x * fact (x-1)


-- Sum has the type Num a => [a] -> a 
-- This says that given any type a which is a number, sum converts a list of numbers to a single value. 


-- The following is the quicksort function 
quicksort [] = []  
quicksort (x:xs) =  
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted 
-- The indentation is sorta annoying but mandatory. 
