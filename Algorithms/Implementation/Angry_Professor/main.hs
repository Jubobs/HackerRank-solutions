-- Link: https://www.hackerrank.com/challenges/angry-professor

import Control.Monad (replicateM_)
import Data.Functor ((<$>))

main :: IO ()
main = do
    n <- readLn
    replicateM_ n processTestCase

processTestCase :: IO ()
processTestCase = do
    [_, k] <- readInts
    ns <- readInts
    putStrLn $
        if isClassCancelled k ns
        then "YES"
        else "NO"

readInts :: IO [Int]
readInts = map read . words <$> getLine

isClassCancelled :: Int -> [Int] -> Bool
isClassCancelled k times = length (filter (<= 0) times) < k
