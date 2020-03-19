    
--main = print(quicksort [1, 3, 2, 1.5, 8, 7, 5 ]
main =  quicksort ["xsbac", "siand", "aooke"] -- Doesn't work, how to input strings?
    
quicksort [] = []  
quicksort (x:xs) =  
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted 