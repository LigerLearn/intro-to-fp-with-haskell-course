-- Our own version of 'Bool', with 'T' representing
-- True and 'F' representing false. 
data MyBool = T | F

-- We want to be able to show (get a String representation) a value of MyBool.
showMyBool :: MyBool -> String
showMyBool T = "True"
showMyBool F = "False"

a, b :: MyBool
a = T
b = F

-- A made up "error" type. 
data MyError = OutOfMemory | IndexOutOfBounds

-- We want to be able to show (get a String representation) a value of MyError.
showMyError :: MyError -> String
showMyError OutOfMemory      = "OutOfMemory"
showMyError IndexOutOfBounds = "IndexOutOfBounds"

-- Is there a way to generalise the behaviour of having a
-- function which can return a string representation of a specific type?
-- Enter type classes.
-- There are two key concepts to understand when it comes to type classes:

-- 1. Type class specifications
-- We create a type class where we specify a set of function signatures 
-- that we expect any instance of the class to implement.
-- The 'a' type parameter will be filled when we define our type class instances.
class MyShow a where
    myShow :: a -> String

-- 2. Type class instances
-- We define our instances of the class by providing:
-- (a) a type for the type parameter ('a') in the type class specification
-- (b) an implementation of the set of functions signatures in the 
--     type class specification.  
instance MyShow MyBool where
    myShow T = "True"
    myShow F = "False"

instance MyShow MyError where
    myShow OutOfMemory      = "OutOfMemory"
    myShow IndexOutOfBounds = "IndexOutOfBounds"

-- The type of the myShow function, since it is defined within the context
-- of a type class becomes: myShow :: MyShow a => a -> String,
-- where everything before the fat arrow, =>, is known as a type class
-- constraint/restriction. 
-- We read it as the myShow function takes any type which is an instance of 
-- the MyShow type class and returns a String.

-- Everything works fine when we call myShow with types that 
-- are instances of MyShow.
bool, err :: String
bool = myShow T
err = myShow OutOfMemory

-- But if we call it with something else then the program will
-- not even compile!
-- aBool :: String
-- aBool = myShow True  -- does not compile because Bool does
--                      -- not define an instance of MyShow
