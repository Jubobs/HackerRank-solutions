-- Link: https://www.hackerrank.com/challenges/pascals-triangle

import Data.List (intercalate)

main :: IO ()
main = do
    n <- readLn
    mapM_ printList $ take n pascals

printList :: Show a => [a] -> IO ()
printList = putStrLn . intercalate " " . map show

pascals :: [[Int]]
pascals = iterate nextRow [1]
  where
    nextRow ns = 1 : zipWith (+) ns (tail ns) ++ [1]
