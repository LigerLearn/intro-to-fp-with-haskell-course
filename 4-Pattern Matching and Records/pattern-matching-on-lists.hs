
------------------------------------------------------------------
-- Pattern matching on lists
--
------------------------------------------------------------------

ints :: [Int]
ints = [0, 1, 2, 3, 4, 5]

-- We want a function which will return the first Int in a list of Ints.
myHead :: [Int] -> Int
myHead []    = error "empty list"
myHead (x:_) = x

-- Returns the first two items of a list as a tuple
my2Head :: [Int] -> (Int, Int)
my2Head []        = error "empty list"
my2Head (x1:x2:_) = (x1, x2)
my2Head (x1:_)    = error "min 2 entries required"

-- Returns the first three items of a list as a tuple.
-- We don't bother defining the empty list and other cases.
my3Head :: [Int] -> (Int, Int, Int)
my3Head (x1:x2:x3:[]) = (x1, x2, x3)  -- matches a list of three items exactly
my3Head (x1:x2:x3:xs) = (x1, x2, x3)  -- matches a list of 


-- Returns the first four items of a list as a tuple.
-- We don't bother defining the empty list and other cases.
my4Head :: [Int] -> (Int, Int, Int, Int)
my4Head (y1:y2:y3:y4:ys) = (y1, y2, y3, y4)

my_Head :: [Int] -> (Int, Int)
my_Head (x1:x2:[]) = (x1, x2)
