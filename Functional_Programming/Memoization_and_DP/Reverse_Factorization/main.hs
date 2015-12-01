-- Link: https://www.hackerrank.com/challenges/reverse-factorization

import Data.Functor ((<$>))
import Data.List    (sort, sortBy)
import Data.Maybe   (fromMaybe)
import Data.Ord     (compare)

main :: IO ()
main = do
    (n : _) <- readInts
    xs      <- readInts
    let steps = solve n $ sortBy (flip compare) xs
    putStrLn $ unwords $ map show steps

readInts :: IO [Int]
readInts = map read . words <$> getLine

solve :: Int -> [Int] -> [Int]
solve n xs
    | n < 1 || 10 ^ 9 < n               = error "solve: invalid first argument"
    | any (\n' -> n' < 2 || 20 < n') xs = error "solve: invalid second argument"
    | otherwise                         = fromMaybe [-1] (reverse <$> go n xs)
  where
    go :: Int -> [Int] -> Maybe [Int]
    go 1 _          = Just [1]
    go _ []         = Nothing
    go n l@(x : xs)
        | r == 0    = (n :) <$> go q l
        | otherwise = go n xs
      where
        (q, r) = n `quotRem` x
