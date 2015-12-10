-- Link: https://www.hackerrank.com/challenges/fp-list-replication

main :: IO ()
main = getContents >>=
       mapM_ print . (\(n : arr) -> f n arr) . map read . words

f :: Int -> [Int] -> [Int]
f n = concatMap $ replicate n
