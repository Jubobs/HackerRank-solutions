-- Link: https://www.hackerrank.com/challenges/pentagonal-numbers

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = B.getContents >>=
    mapM_ print . map pentagonal . tail . readInts . B.words
  where
    readInts = map (fst . fromJust . B.readInt)

pentagonal :: Int -> Int
pentagonal n
    | n < 1     = error "pentagonal: nonpositive argument"
    | otherwise = n * (3 * n - 1) `quot` 2
