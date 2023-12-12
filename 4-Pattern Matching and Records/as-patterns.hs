{-
   We can use "as" patterns to destructure a type and also bind a name to
   the whole destructured value as well. 
-}


-- Return a string describing the list argument. 
description :: [Int] -> String
description     []      = "The list is empty."
description   (x:[])    = "The list has 1 element: " ++ (show x)
description list@(x:xs) = "The list has " ++ lengthS ++ " elements. The first item is: " ++ (show x)
  where
    lengthS = show (length list)  -- get the length of the list as a string
    
    
-- You can use as patterns with your custom algebraic data types too.
data Person = Person String Int deriving Show

describe :: Person -> String
describe p@(Person name age) = if age > 50
                               then (show p) ++ " is old!"
                               else (show p) ++ " is not old."
