-- A recursive function is one which is defined 
-- in terms of itself like below.
factorial :: Int -> Int
factorial n = if (n == 0)
              then 1
              else n * (factorial (n-1))