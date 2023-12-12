newtype Day = Day Int
newtype Month = Month Int
newtype Year = Year Int

-- record syntax is still allowed, but only for one field (commented out to avoid name clash):
-- newtype Year = Year { year :: Int } deriving Show

d1 :: (Day, Month, Year)
d1 = (Day 12, Month 11, Year 2931)

type Date = (Day, Month, Year)

-- The invalidDate below would refuse to compile
-- because the types do not match the signature.
-- invalidDate :: Date
-- invalidDate = (Month 4, Day 31, Year 1991)
