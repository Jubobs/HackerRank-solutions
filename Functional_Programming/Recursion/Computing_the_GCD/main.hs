-- Link: https://www.hackerrank.com/challenges/functional-programming-warmups-in-recursion---gcd

main :: IO ()
main = getLine >>=
    print . (\[n, m] -> gcd' n m) . readInts . words
  where
    readInts = map (read :: String -> Int)

gcd' :: Integral a => a -> a -> a
gcd' n m = let diff = n - m in
    case diff `compare` 0 of
        LT -> gcd' n (-diff)
        EQ -> n
        GT -> gcd' diff m
