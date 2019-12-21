module Day1 where

import           System.IO
import           Data.List.Split
import           Flow

part1 = do
  contents <- readFile "src/input/day1.txt"
  contents
    |> splitOn "\n"
    |> init
    |> map (\x -> read x :: Int)
    |> map calculateFuel
    |> sum
    |> print

part2 = do
  contents <- readFile "src/input/day1.txt"
  contents
    |> splitOn "\n"
    |> init
    |> map (\x -> read x :: Int)
    |> map calculateFuelRecursive
    |> sum
    |> print

calculateFuel x = (x `div` 3) - 2


calculateFuelRecursive :: Int -> Int
calculateFuelRecursive x =
  let z = (x `div` 3) - 2 in if z > 0 then z + calculateFuelRecursive z else 0
