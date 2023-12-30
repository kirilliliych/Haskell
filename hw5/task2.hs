import Control.Monad
import Data.List
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  when (length args /= 3) $ do
    putStrLn "Wrong command line arguments quantity"
    return ()
  let inputFilePath = head args
      outputFilePath = args !! 1
      reverseVal = read (args !! 2) :: Int
  inputFile <- readFile inputFilePath
  let values = lines inputFile
      sortedValues = sort values
      resultValues = if reverseVal /= 0 then reverse sortedValues else sortedValues
  writeFile outputFilePath (unlines resultValues)

