{-
  We can add boolean guards to a pattern to add further conditions for when it matches.
-}


-- An example of a function defined using an as pattern and an if-then-else 
-- expression.
data Person = Person String Int deriving Show

describe :: Person -> String
describe p@(Person name age) = if age > 50
                               then (show p) ++ " is old!"
                               else (show p) ++ " is not old."


-- Same function defined using guards.
describeG :: Person -> String
describeG p@(Person name age) 
 | age > 50  = (show p) ++ " is old!"
 | otherwise = (show p) ++ " is not old."


sign :: Int -> Int
sign x 
    | x > 0  = 1
    | x == 0 = 0
    | x < 0  = -1