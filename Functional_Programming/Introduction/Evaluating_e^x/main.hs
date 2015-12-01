import Control.Monad (replicateM_)
import Data.Functor  ((<$>))
import Text.Printf   (printf)

main :: IO ()
main = do
    n <- (read :: String -> Int) <$> getLine
    replicateM_ n processTestCase

processTestCase :: IO ()
processTestCase = do
    x <- (read :: String -> Double) <$> getLine
    printf "%.4f\n" $ exponential x


exponential :: Double -> Double
exponential = sum . take 10 . expansion

expansion :: Double -> [Double]
expansion x = map snd $ iterate step (0, 1)
  where
    step (k, y) = let k' = k + 1 in (k', y * x / k')
