a, b :: Bool
a = True
b = False

-- Testing for equality using '==' and '/='
c, d, e, f :: Bool
c = 2 == 2         -- True
d = 3 /= 3         -- False
e = 2 /= 3         -- True
f = (125 * 0) == 0 -- True

-- Comparing two values which follow an ordering
-- using <, <=, >, >=
g, h, i, j :: Bool
g = 512 < 1024     -- True
h = 1024 <= 2      -- False
i = 256.0 > 32.25  -- True
j = "a" >= "b"     -- False

-- Combining boolean conditions using &&
-- and ||.
k, l :: Bool
k = (512 < 1024) && ('c' == 'd')  -- False
l = (512 < 1024) || ('c' == 'd')  -- True

-- Negation using 'not' just flips True 
-- to False and vice versa.
m, n, o :: Bool
m = not (True && j)               -- True
n = (not False) && True           -- True
o = False || not (not h) || not i -- False
