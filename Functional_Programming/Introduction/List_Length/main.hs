-- Link: https://www.hackerrank.com/challenges/fp-list-length

import Data.List (foldl')

len :: [a] -> Int
len = foldl' (\acc _ -> acc + 1) 0
