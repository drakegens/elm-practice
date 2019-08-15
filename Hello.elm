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
    

output : String
output = (Basics.toString (fillWithOnes aList))



