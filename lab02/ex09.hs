main = do
       print (append [] [1, 2])
       print (append [1, 2] [3])
       print (member 1 [1, 2, 3])
       print (member 4 [1, 2, 3])
       print (reverse_ [1, 2, 3, 4])
       print (last_ [1, 2, 3])
       print (last_ ([] :: [Int])) -- need to specify the table type
       print (delete 1 [2, 1, 3])
       print (pairing [1, 2, 3] ["a", "b", "c"])
       print (split 3 [1, 5, 20, 1, 2, 52, 23, 3])
       print (map_ (times_two) [1, 2, 3, 4])

append [] m = m
append (l:ls) m = l : (append ls m)

member x [] = False
member x (l:ls) = if x == l then True
                  else member x ls

reverse_ [] = []
reverse_ (x:xs) = append (reverse_ xs) [x]

-- last_ :: [a] -> Maybe a
last_ [] = Nothing
last_ (x:[]) = Just x
last_ (x:xs) = last_ xs

delete x [] = []
delete x (l:ls) = if x == l then ls
                  else l : delete x ls

-- in haskell you create a pair by (something, something2)
pairing [] [] = []
pairing (h1:t1) (h2:t2) = (h1, h2) : pairing t1 t2

split x [] = ([], [])
split x (l:ls) 
    | l < x = (l : l1, l2)
    | otherwise = (l1, l : l2)
    where
        (l1, l2) = split x ls

times_two x = x * 2

map_ f [] = []
map_ f (l:ls) = (f l) : (map_ f ls)