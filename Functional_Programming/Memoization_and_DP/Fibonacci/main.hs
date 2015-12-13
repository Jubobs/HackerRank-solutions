-- Link: https://www.hackerrank.com/challenges/fibonacci-fp

import Control.Monad (replicateM_)
import Data.Functor ((<$>))

main :: IO ()
main = do
    n <- readLn
    replicateM_ n processTestCase

processTestCase :: IO ()
processTestCase = print . (`rem` 100000007) . (fib !!) . read =<< getLine

fib :: [Integer]
fib = 0 : 1 : zipWith (+) fib (tail fib)
