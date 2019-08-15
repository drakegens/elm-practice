module Hello exposing (output)
import Html
import Array
import List
import Debug


aList = [1,2,3,4]
fillWithOnes: List Int -> List Int
fillWithOnes myList =
    case myList of
    [] -> []
    [_] -> myList
    _ -> 1 :: fillWithOnes (List.take ((List.length myList) - 1) myList) 
    
    
-- main =
--   Html.text (Basics.toString (fillWithOnes aList))

--reverseList numbersToReverse

{-
listLength aList =
  case aList of
    [] -> 0
    x::xs -> 1 + listLength xs
In a normal language i'd just create a new list, iterate through starting at length
-}

output : String
output = (Basics.toString (fillWithOnes aList))



