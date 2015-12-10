-- Link: https://www.hackerrank.com/challenges/fp-update-list

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = B.getContents >>=
    mapM_ print . map abs . readInts . B.words
  where
    readInts = map (fst . fromJust . B.readInt)

f :: [Int] -> [Int]
f = map abs
