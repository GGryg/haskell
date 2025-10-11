-- main :: IO ()
main = do
    print ("same_value == equal 3 1 = " ++ show (same_values (==) equal 3 1)) -- if you want to pass operators as an arg put it into ()
    print ("same_value < > 2 3 = " ++ show (same_values (<) (>) 2 3))
    print ("same_value + * 2 2 = " ++ show (same_values (+) (*) 2 2))

-- from previous exercise
-- smaller :: Int -> Int -> Bool
smaller x y = x < y

-- greater :: Int -> Int -> Bool
greater x y = y < x

-- greater_equal :: Int -> Int -> Bool
greater_equal x y = not (smaller x y)

-- smaller_equal :: Int -> Int -> Bool
smaller_equal x y = not (greater x y)

-- equal :: Int -> Int -> Bool
equal x y = not (greater x y) && (greater_equal x y)

-- not_equal :: Int -> Int -> Bool
not_equal x y = not (equal x y)


-- current exercise
-- same_values :: (a -> b -> Bool) -> (a -> b -> Bool) -> a -> b -> Bool
same_values p1 p2 x y = (p1 x y) == (p2 x y)