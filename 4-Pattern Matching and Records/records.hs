{-
  Records can be used to define types which provide automatic "getters" for 
  their constituent fields - removing the need for boiler plate. 
-}


-------------------------------------------
-- For a normal data type declaration
-- we need to provide a lot of boiler plate
-- code to deal with getters, and updating values.
-------------------------------------------

-- Type definition: fields based on their position. 
-- 1st is name (String), 2nd is age (Int).
data Person = Person String Int deriving Show

-- Construction: using parameters which are
-- passed positionally.
satoshi :: Person 
satoshi = Person "Satoshi Nakamoto" 11

greeting :: String -> String
greeting name = "Hello " ++ name ++ "!"

-- Getter: Retrieve field positionally
getName :: Person -> String
getName (Person name _) = name

-- Getter: Retrieve field positionally
getAge :: Person -> Int
getAge (Person _ age) = age

-- "Update": Copy old value(s) and update
-- a single value positionally 
agedByOne :: Person -> Person
agedByOne (Person name age) = Person name (age + 1)

-------------------------------------------
-- Records provide an alternative way. 
-- 
-- You can define the data type in a "record style"
-- so rather than dealing with the fields positionally
-- you deal with them based on custom labels we define. 
-------------------------------------------

-- Type definition: fields based on their label
-- rather than based on their position.
data PersonR = PersonR 
    { personName :: String
    , personAge  :: Int
    } deriving Show

-- Construction: we can construct using the
-- positional style just like before
boris :: PersonR
boris = PersonR "Boris Johnson" 57

-- Construction: or we can construct
-- a value using the field naming syntax.
elizabeth :: PersonR
elizabeth = PersonR { personAge = 95, 
            personName = "Elizabeth Windsor" }

-- Getters are automatically created by the compiler
-- for each field. The names of the getter functions
-- match the name of the field. So for example we
-- could get the name and pass it to the greeting
-- function like so:
greet = greeting (personName elizabeth)


-- "Update:" you can use record syntax to change
-- whichever field you want.
borisPlus1 = boris { personAge = (personAge boris) + 1}

    
------------------------------------------------
-- We can define sum types using record
-- syntax as well (see Animal below).

data DogBreed = Dalmation
              | Rottweiler
              | ShibaInu
        deriving Show
              
data CatBreed = Domestic
              | Lion
              | Tiger
              deriving Show
              
data Animal = Dog
    { name     :: String
    , age      :: Int
    , dogBreed :: DogBreed
    } | Cat 
    { name     :: String
    , age      :: Int
    , catBreed :: CatBreed    
    } deriving Show


fido, felix :: Animal
fido = Dog "fido" 3 Dalmation
felix = Cat "felix" 4 Lion

-- You use the constructor to pattern match on a specific value which is possible.
speak :: Animal -> String
speak (Dog "fido" 3 Dalmation) = "Fido's Growl!"
speak (Dog _ _ _) = "Woof"
speak (Cat "felix" 4 Lion) = "Felix's Roar!"
speak (Cat _ _ _) = "Meow"    