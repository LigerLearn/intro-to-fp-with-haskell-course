-- In Haskell we use the equals sign to bind an identifier to an expression:
-- identifier = expression
-- We use the double colon symbol, ::, to declare the type of an identifier
x :: Integer
x = 1

-- x = 5  -- If we uncomment this it will result in a compilation error.
          -- `Multiple declarations of `x'`
          
y = 5     -- Type declarations are optional. The majority of the time the
          -- compiler can infer the type without us needing to declare it.
          -- You can see the type which is inferred for y by entering 
          -- `:t y` into the GHCi prompt.


-- Bool is short for 'boolean'. A Bool is either a true or false value.
a, b :: Bool
a = True
b = False

-- Char is short for 'character'. A character value represents a unicode character.
d, e, f, g :: Char
d = 'h'
e = 'ग'
f = 'Д'
g = '地'


-- An Int is a signed integer (signed meaning can represent a positive and negative)
-- with fixed precision. This means that an Int can only be between a specific interval.
-- The actual interval depends on your computer architecture but the Haskell standard
-- states it must be at least 29 bits. You can see the range of values allowed on your
-- computer by referring to the in-built 'maxBound' and 'minBound' constants.
biggestInt, smallestInt :: Int
biggestInt  = maxBound
smallestInt = minBound

-- An Integer is a signed integer with arbitrary precision.
-- It is limited only by the memory of your program.
evenBiggerInt, evenSmallerInt :: Integer
evenBiggerInt = 1009223372036854775807
evenSmallerInt = -1009223372036854775807

-- A Double is an IEEE double-precision floating point number.
-- A double value has 64 bits.
h, i :: Double
h = 3.141592654
i = 2.71828

-- We can declare lists of a type with the special syntax
-- for lists, [], and populate them with values of that type.
j1, j2 :: [Int]
j1 = [1, 2, 3, 4, 5]
j2 = [6, 7, 8, 9, 10]

-- A String is a list of characters which we can place in double quotes
-- for convenience.
k :: [Char]
k = ['h', 'e', 'l', 'l', 'o']
l :: String
l = "hello"
m :: [Char]
m = "hello"

-- You can use the list concatenation operator to join two lists
-- together in a new list.
j1AndJ2 :: [Int]
j1AndJ2 = j1 ++ j2

kAndL :: String
kAndL = k ++ l


-- A tuple is a finite sequence of elements.
-- Each item in the Tuple can be of a different type.
n :: (Int, Double)
n = (102, 45.23)

o :: (String, Int, Char)
o = ("3-tuple", 120, 'c')

-- A special tuple is the empty tuple, which is called
-- 'unit' in Haskell.
p :: () 
p = ()
