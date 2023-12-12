{-
  Case expressions allow you to provide a single function binding
  and provide all of your pattern matches for that single binding.

  This is an alternative to defining multiple function bindings: one
  for each pattern.
-}


myHead :: [Int] -> Int
myHead x = case x of
    []    -> error "empty list"
    (x:_) -> x

