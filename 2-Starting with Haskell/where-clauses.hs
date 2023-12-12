{-
  where clauses can be used to introduce convenience variables that can 
  be referenced in a function's body.
-}

-- Takes in a list of Int and returns a description of the number of items in the list.
description1 :: [Int] -> String
description1 x = "There are " ++ (show (length x)) ++ " items in the list."


-- Takes in a list of Int and returns a description of the number of items in the list.
-- Uses a where clause to break up the logic.
description2 :: [Int] -> String
description2 x = "There are " ++ lengthS ++ " items in the list."
  where
    -- Type signatures in where clauses are optional.
    -- The length function returns an Int but we need it to be a string
    -- so we can concatenate the value with the other string in the function body.
    lengthI :: Int
    lengthI = length x
    
    -- We use the show function to convert lengthI from an int to a string
    lengthS :: String
    lengthS = show lengthI

-- You should follow a general convention:
--  1. always put the where keyword on a newline.
--  2. indent the where keyword by 2 spaces.
--  3. place the code for the where clause on a newline 
--  4. indent the code block four spaces (2 spaces more than the where block). 

