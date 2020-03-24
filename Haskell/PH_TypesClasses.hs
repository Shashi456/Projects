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


second xs = head (tail xs)
--[a] -> [a] -> a // Wrong
-- [a] -> a (The above is wrong because, you can think of a function in terms of currying only when there are multiple arguments.)

swap (x, y) = (y, x)
-- (t1, t) -> (t, t1) // Pretty cool that haskell exactly can derive the type inference in a sense that it knows a swap is occuring and isn't (a, a) -> (a, a) purely.

double x = x*2 
-- a -> a

palindrome xs = reverse xs == xs 
-- [a] -> bool

twice f x = f (f x)
-- (t -> t) -> t -> t // this makes me realize about function adherence and how type is inferred off of that. the paranthesis around t -> t saying that this is first an internal function application which results in a value t which is then mapped to t. So (t->t)->t->t, is probably for showing compositional functions. 
thrice f x = f (f (f x))
--has the same type as above so as long as it is the same function it has the same compositional type inference. 

--lets try something different, given the function 
second f t x = f (t x)
-- type is, second :: (t -> t1) -> (t2 -> t) -> t2 -> t1
 thrice f x z = f( f (x (z)))
-- type is, thrice :: (t -> t) -> (t1 -> t) -> t1 -> t
-- Read more about type inference and types of compositional functions in haskell.

