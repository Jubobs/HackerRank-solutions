-- Link: https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list
--
import qualified Data.ByteString.Char8 as B
import Data.Maybe (fromJust)

main :: IO ()
main = mapM_ print . f . readInts . B.lines =<< B.getContents
  where
    readInts = map (fst . fromJust . B.readInt)

f :: [Int] -> [Int]
f []           = []
f [x]          = []
f (x : y : xs) = y : f xs
