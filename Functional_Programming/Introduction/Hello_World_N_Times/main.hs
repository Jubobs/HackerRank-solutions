-- Link: https://www.hackerrank.com/challenges/fp-hello-world-n-times

import Control.Monad (replicateM_)
import Data.Functor  ((<$>))

main :: IO ()
main = do
    n <- readInt
    replicateM_ n helloWorld

readInt :: IO Int
readInt = read <$> getLine

helloWorld :: IO ()
helloWorld = putStrLn "Hello World"
