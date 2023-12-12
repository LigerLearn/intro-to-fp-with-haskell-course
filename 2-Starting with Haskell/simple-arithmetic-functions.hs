a, b, c :: Int
a = 3 + 5    -- 8
b = 120 - 10 -- 110
c = 5 * 2    -- 10

-- d would fail to compile because the (/)
-- function expects the result to be a 'Fractional'
-- which Int obviously is not. We will cover this 
-- properly when we look at type classes in Haskell.
-- d :: Int
-- d = 20 / 2

-- If we write the same code with a 'Fractional' type
-- such as Double everything will work!
e :: Double
e = 20 / 2 -- 10.0

-- The inbuilt 'div' function performs integer division.
f :: Int
f =  div 20 2 -- 10

-- Placing a dash in front of a number directly will turn it
-- negative.
g, h :: Double
g = -984.56
h = 220 + (-924)   -- -704.0

-- Exponentiation, that is raising a number to a power of something,
-- is done using the caret, ^, symbol.
i :: Int
i = 2^3   -- 8

-- You can turn a function to an infix position by placing
-- the name of the function in backticks, ``.
j :: Int
j = 20 `div` 2  -- 10
