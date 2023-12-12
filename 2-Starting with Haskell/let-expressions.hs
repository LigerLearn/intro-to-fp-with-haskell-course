{-
  You can use a let expression to create a new scope for bindings. 
  let expressions are of the form:
  
  let d1
      d2
      ...
   in e
  
  where d1/d2/... represent a declaration and e is an expression. 
-}

-- Takes in a list of Int and returns a description of the number of items in the list.
description1 :: [Int] -> String
description1 x = "There are " ++ (show (length x)) ++ " items in the list."

-- Now rewritten using a let expression
description2 :: [Int] -> String
                 -- Between the let and the in you can define your bindings.
                 -- The variables defined will not be available outside of the let expression.
description2 x = let lengthI :: Int
                     lengthI = length x       -- The length as an int.
    
                     lengthS :: String
                     lengthS = show lengthI   -- The length as a string (which is what we need).
                  in "There are " ++ lengthS ++ " items in the list."  -- <-- This line contains the expression 
                  
                  
-- The variables 'lengthI' and 'lengthS' are not available to use outside of the let expression.


-- This level of indentation will not cause any issues with the compiler but does not look g
-- good on the eye.
a = let b = 1
 in b
 
-- It is nicer on the eyes to 
-- have the 'in' part of the expression be indented to match the ending of the 'let'.
b = let c = 1
     in c
     
-- This type of indenting would be fine too.
-- We just need to make sure anything in the let expression is indented by at least one
-- space from the upper scope.     
c = let 
 a = 1
 in a 
 
-- Since the 'in' keyword expects an expression you could, if you wanted to, 
-- recursively put another let expression there. 
d = let 
 a = 1
 in let b = 2
     in a