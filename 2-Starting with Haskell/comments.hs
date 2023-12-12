-- A special type of block comment is known as a language 
-- pragma. For these comments we add a hash symbol, #, 
-- to the block comment opening, '{-#', and closing, '#-}'. 
-- For example the pragma below indicates we want this file 
-- to be treated by the compiler as following the Haskell 
-- 2010 language standard. LANGUAGE pragmas must appear at 
-- the top of the file, but other pragmas may not have this restriction.
{-# LANGUAGE Haskell2010 #-}

-- Line comments start with two consecutive dashes.
-- They extend until the end of the line.
a = 7 -- This line comment starts after some code

{- 
   Nested/block comments begin with '{-' and end with a '-}'.
   Text within the comment block can span multiple lines. 
 -} 

-- The type of comment below '-- |' is used to indicate to 
-- documentation generators that the comment
-- should be used for documentation.

-- |The 'square' function squares an integer.
square :: Int -> Int
square x = x * x 
