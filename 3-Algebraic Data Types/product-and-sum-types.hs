-- We are using additional types like Int8
-- which will be imported when import Data.Int
import Data.Int

-----------------------------------------------------
-- Product Types
-----------------------------------------------------
-- How can we represent a date? A simple 
-- (but error prone) way could be to use a 3-tuple.
-- Tuples are in-built product types.
d1 :: (Int, Int, Int)
d1 = (1, 2, 1990)

-- A better way would be to create a specific 
-- type to represent a Date.
data DateTC = DateDC Int Int Int
  deriving Show

d2, d3 :: DateTC
d2 = DateDC 1 2 1990
d3 = DateDC 25 12 2040

-- You can have a type constructor and value 
-- constructor have the same name without
-- any issues. 
data Date = Date Int Int Int
  deriving Show

d4, d5 :: Date
d4 = Date 15 8 1947
d5 = Date 13 5 3001

-- But even with our custom type we can still
-- create 
invalidDate :: Date
invalidDate = Date 4 31 1991

-----------------------------------------------------
-- Sum Types
-----------------------------------------------------

-- The 'Bool' type is defined in the Prelude like so:
-- data Bool = True 
--           | False
--   deriving Show

-- We can use the constructors in the type definition
-- (True/False) to define values of the type Bool.
a, b :: Bool
a = True
b = False

-- We define a type to represent every month.
-- The pipe character, |, represents the fact
-- that the value could be something OR something
-- else.  
data Month = January
           | February
           | March
           | April
           | May
           | June
           | July
           | August
           | September
           | October
           | November
           | December
  deriving Show
  
-- And we create some values which are of the type Month.
-- We use the constructor to construct the values.          
jan, feb, mar :: Month
jan = January
feb = February
mar = March

-----------------------------------------------------
-- Product and Sum Types
-----------------------------------------------------

-- How many values does the Status type have?
-- Since it is a sum type you can just sum 
-- the values of each branch to get to 257.
data Status = Success
            | Failure Int8

-- A totally contrived data type.
data A = A Bool Int8
       | B Int8 Int8 Int8 Bool
       | C 

