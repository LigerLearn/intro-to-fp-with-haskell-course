-- If the number is odd say hello,
-- if it is even say bye bye.
helloOrBye :: Int -> String
helloOrBye x = if odd x
               then "hello"
               else "bye bye"