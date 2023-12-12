------------------------------------------------
-- Polymorphic Functions
------------------------------------------------

-- inOut is a function which just returns the 
-- argument passed in to the function when it is
-- called. What is the function's type signature?
inOut x = x

-- The type signature of inOut is 
-- inOut :: a -> a
-- The 'a' represents a type variable of any type.
-- The name 'a' could be anything as long as it starts
-- with a lower case. 
-- So it could be 
-- inOut :: someType -> someType
-- or
-- inOut :: whatIsTheTime -> whatIsTheTime
-- but the convention in Haskell is to just 
-- use single character type variable names.

-- In actual fact there is an in-built function
-- which does the same thing as `inOut` which is 
-- called `id` and has the type signature
-- id :: a -> a

------------------------------------------------
-- Polymorphic Types
------------------------------------------------

-- One of the simplest examples of a parametric type
-- is the Maybe type defined in the standard prelude:

-- data Maybe a = Just a
--              | Nothing

-- We can define values like so:
m0, m1 :: Maybe Int
m0 = Nothing
m1 = Just 43

m2, m3, m4 :: Maybe String
m2 = Just "Hello"
m3 = Just "Bye Bye"
m4 = Nothing


-- The `Either a b` type is also built in to the prelude.
-- data Either a b = Left a
--                 | Right b

-- Example usage of returning an Either:
intDiv :: Int -> Int -> Either String Int
intDiv x 0 = Left "Cannot perform division by zero"
intDiv x y = Right (x `div` y)


-- We've already seen examples of polymorphic 
-- types in tuples and lists. 
