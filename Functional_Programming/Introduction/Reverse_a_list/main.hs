-- Link: https://www.hackerrank.com/challenges/fp-reverse-a-list

rev :: [a] -> [a]
rev xs = go xs []
  where
    go []       ys = ys
    go (x : xs) ys = go xs (x : ys)
