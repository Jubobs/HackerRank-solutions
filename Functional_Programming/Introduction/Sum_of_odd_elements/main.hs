-- Link: https://www.hackerrank.com/challenges/fp-sum-of-odd-elements

import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = print . sum . filter odd . readInts . B.lines =<< B.getContents
  where
    readInts = map (fst . fromJust . B.readInt)
