    
main = print(quicksortd [1, 3, 2, 1.5, 8, 7, 5])
-- main =  quicksort ["xsbac", "siand", "aooke"] -- Doesn't work, how to input strings?
    
quicksortd [] = []  
quicksortd (x:xs) =  
    let smallerSorted = quicksortd [a | a <- xs, a <= x]  -- from all xs, 
        biggerSorted = quicksortd [a | a <- xs, a > x]  
    in  biggerSorted ++ [x] ++ smallerSorted

quicksort [] = [] 
quicksort (x:xs) =  
    let smallerSorted = quicksort [a | a <- xs, a <= x]  -- from all xs, 
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted 



    