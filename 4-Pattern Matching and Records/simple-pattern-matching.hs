{-
   Pattern matching is a technique where a specific variable value is tested to 
   see whether it matches a provided pattern. 

   The set of values which can be tested is defined by the type for the parameter. 
-}

-- In the case where a parameter is of type Bool we can provide
-- patterns for every possible value quite easily.
f :: Bool -> Int
f False = 0
f True = 1


-- You can pattern match a variable against any of the possible values
-- of its type. 
g :: Int -> Int
g 0 = 1
g 1 = 1
g 2 = 2
g 3 = 6
g 4 = 24

-- We've seen the factorial function already being defined like so:
factorial :: Int -> Int
factorial n = if (n == 0)
              then 1
              else n * (factorial (n-1))

-- We could instead define it using pattern matching like so:
fact :: Int -> Int
fact 0 = 1
fact n = n * (factorial (n-1))


-- Pattern alternatives are tried sequentially, from top to bottom.
-- The definition of fact' below causes a compiler warning because 
-- the first pattern will always match, regardless of the argument.
-- This means the second pattern is redundant because it will never 
-- actually match. We need to be aware of this and make sure we  
-- define patterns so that the more specific cases appear first.
fact' :: Int -> Int
fact' n = n * (factorial (n-1))
fact' 0 = 1

------------------------------------------------------------------
-- Wildcard patterns
--
-- You can use the wildcard underscore _ as a pattern to match
-- anything. However, the parameter will not bound to a variable name
-- and so will not be usable in the body of the function.
------------------------------------------------------------------

f2 :: String -> String
f2 "Hello" = "Bye"
f2 "Bye" = "Hello"
f2 _ = "What?!"

-- When we match using a variable name we are matching against 
-- anything (like the wildcard _) but we are also binding the
-- value to a name which can be used in the function body.
f3 :: String -> String
f3 "Hello" = "Bye"
f3 "Bye" = "Hello"
f3 x = x


------------------------------------------------------------------
-- Tuple patterns
--
------------------------------------------------------------------

-- Double each int in the pair.
double :: (Int, Int) -> (Int, Int)
double (0, 0) = (0, 0)
double (a, b) = (2*a, 2*b)

-- Extract the first item in the triplet.
first :: (Int, Double, Char) -> Int
first (a, _, _) = a
