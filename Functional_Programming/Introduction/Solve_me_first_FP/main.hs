-- Link: https://www.hackerrank.com/challenges/fp-solve-me-first

import Data.Functor ((<$>))

main :: IO ()
main = do
    a <- readInt
    b <- readInt
    print $ a + b

readInt :: IO Int
readInt = read <$> getLine
