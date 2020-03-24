-- A type is haskell can be defined as a collection of related values. 
-- For example, Bool has two values true and false and Bool -> Bool, contains 
-- all funcitons that map arguments from Bool to Bool. 
False :: Bool -- Can be used to bind expressions preceding the type for example 
-- a :: b says either that a has type b, or that a is an expression which will return type b. 


-- Type inference in Haskell precede evaluation, hence haskell is called Type safe. For example
-- Not 8 -- Results in a type error.


:type sum
-- sum :: (Foldable t, Num a) => t a -> a , the result of the above, my understanding is that as long as
-- a number a is has is represented in foldable format this will return a singular value. 


-- Lists and Tuples, Lists can only be of one type, while tuples can have multiple types. Tuples of single length arent allowed to avoid confusion with argument passing wrt functions. 

-- Haskell convention for writing functions precedes function definitions by their types. 


-- Functions which take their arguments one at a time are curried functions. By default when given multiple arguments to a function, they are curried. The function arrow -> in types is assumed to be associated to the right. And function which is spaced to silent using spacing is assumed to be associated to the left. 

-- For example 
sum2 (x,y) = x + y 
:type sum2 
 -- sum2 :: Num a => (a, a) -> a
sum3 x y z = x + y + z 
:type sum3 
-- sum3 :: Num a => a -> a -> a -> a
sum4 x p q r = x + sum3 p q r 
:type sum4  
-- sum4 :: Num a => a -> a -> a -> a -> a

-- Polymorphic functions have the type [a] -> x where x can be anything here is can be of any type. Example funcitons include length, take etc. Q: How to interpret function variables? 
