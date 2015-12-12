-- Link: https://www.hackerrank.com/challenges/rotate-string

import Control.Monad (replicateM_)
import Data.List (inits, intercalate, tails)

main :: IO ()
main = do
    n <- readLn
    replicateM_ n processTestCase

processTestCase :: IO ()
processTestCase = putStrLn . intercalate " " . rotations =<< getLine

rotations :: [a] -> [[a]]
rotations xs = tail $ zipWith (++) (tails xs) (inits xs)
