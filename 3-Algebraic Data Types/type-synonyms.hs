-- Type synonyms allow us to give another name to a type.
-- String is a type synonym which is declared in the 
-- standard library:
--   type String = [Char]  


-- We can refer to the original type or to the synonym
-- in a type signature.
a :: [Char]
a = "Hello"

b :: String
b = "Hello"

-- Rather than use a raw 3-tuple (Int, Int, Int) 
-- to represent a Date we can use type synonyms
-- to make it clear which Int represents what
-- part of the date. So we create type synonyms
-- for each part of the date (day/month/year)
type Day = Int
type Month = Int
type Year = Int

d1 :: (Day, Month, Year)
d1 = (12, 11, 2931)

type Date = (Day, Month, Year)

d2 :: Date
d2 = (30, 1, 1991)

invalidDate :: Date
invalidDate = (4, 31, 1991)

-----------------------------------------
-- Other example usages of type synonyms:
type Kilometres = Double
type Miles = Double

distance :: Double
distance = 1.3

di1 :: Kilometres
di1 = 1.3

di2 :: Miles
di2 = 1.3

convertMilesToKm :: Miles -> Kilometres
convertMilesToKm miles = 1.609344 * miles