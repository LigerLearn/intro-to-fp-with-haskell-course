-- Our own version of 'Bool', with 'T' representing
-- True and 'F' representing false. 
data MyBool = T | F

-- We want to be able to test if two MyBool values are equal or
-- not equal and so we define an instance of Eq for it.
instance Eq MyBool where
   (==) T T = True
   (==) T F = False
   (==) F T = False
   (==) F F = True
   
   (/=) a b = not (a == b)


-- We can use 'deriving' to have the compiler automatically 
-- generate the instance declarations for the type classes.
-- Derivable classes in the Prelude include: Eq, Ord, Enum, Bounded, Show, and Read.
data MyBool2 = T2 | F2 deriving (Eq, Show)