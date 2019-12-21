module Day1 where

import           System.IO
import           Data.List.Split
import           Flow

day1 = do
  contents <- readFile "src/input/day1.txt"
  contents
    |> splitOn "\n"
    |> init
    |> map (\x -> read x :: Int)
    |> map calculateFuel
    |> sum
    |> print


calculateFuel x = (x `div` 3) - 2
