addTwoInts :: Int -> Int -> Int
addTwoInts a b = a + b

addThreeDoubles :: Double -> Double -> Double -> Double
addThreeDoubles a b c = a + b + c

-- Brackets are only needed to group when you 
-- have compound expressions
a :: Int
a = addTwoInts 50 (addTwoInts 12 45) -- 50 + 57 = 107

-- If you do not need to use a parameter
-- in the function body, you can use an underscore
-- in the binding to indicate it is unused. 
first :: (Int, Double, Char) -> Int
first (a, _, _) = a
