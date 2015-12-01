-- Link: https://www.hackerrank.com/challenges/pentagonal-numbers

import Control.Monad (replicateM_)
import Data.Functor  ((<$>))

main :: IO ()
main = do
    n <- readInt
    replicateM_ n processTestCase

processTestCase :: IO ()
processTestCase = print . pentagonal =<< readInt

readInt :: IO Int
readInt = read <$> getLine

pentagonal :: Int -> Int
pentagonal n =
    if n < 1
    then error "pentagonal: nonpositive argument"
    else n * (3 * n - 1) `quot` 2
