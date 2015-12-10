-- Link: https://www.hackerrank.com/challenges/fp-filter-array

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = B.getContents >>=
    mapM_ print . (\(n : ns) -> f n ns) . readInts . B.words
  where
    readInts = map (fst . fromJust . B.readInt)

f :: Int -> [Int] -> [Int]
f n = filter (< n)
