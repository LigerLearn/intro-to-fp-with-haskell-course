-- Let's create some made-up custom types so we can see how we can pattern match on them.

data DogBreed = Dalmation
              | Rottweiler
              | ShibaInu
        deriving Show
              
data CatBreed = Domestic
              | Lion
              | Tiger
              deriving Show
              
type Name = String
 
newtype Age = Age Int 
            deriving Show

data Animal = Dog Name Age DogBreed
            | Cat Name Age CatBreed
            deriving Show


fido, felix :: Animal
fido = Dog "fido" (Age 3) Dalmation
felix = Cat "felix" (Age 4) Lion

-- You use the constructor to pattern match on a specific value which is possible.
speak :: Animal -> String
speak (Dog "fido" (Age 3) Dalmation) = "Fido's Growl!"
speak (Dog _ _ _) = "Woof"
speak (Cat "felix" (Age 4) Lion) = "Felix's Roar!"
speak (Cat _ _ _) = "Meow"