-- main :: IO ()
main = do
    print ("smaller 5 10 = " ++ show (smaller 5 10))
    print ("smaller 10 10 = " ++ show (smaller 10 10))
    print ("smaller 15 10 = " ++ show (smaller 15 10))
    print ("greater 5 10 = " ++ show (greater 5 10))
    print ("greater 10 10 = " ++ show (greater 10 10))
    print ("greater 15 10 = " ++ show (greater 15 10))
    print ("greater_equal 5 10 = " ++ show (greater_equal 5 10))
    print ("greater_equal 10 10 = " ++ show (greater_equal 10 10))
    print ("greater_equal 15 10 = " ++ show (greater_equal 15 10))
    print ("smaller_equal 5 10 = " ++ show (smaller_equal 5 10))
    print ("smaller_equal 10 10 = " ++ show (smaller_equal 10 10))
    print ("smaller_equal 15 10 = " ++ show (smaller_equal 15 10))
    print ("equal 5 10 = " ++ show (equal 5 10))
    print ("equal 10 10 = " ++ show (equal 10 10))
    print ("equal 15 10 = " ++ show (equal 15 10))
    print ("not_equal 5 10 = " ++ show (not_equal 5 10))
    print ("not_equal 10 10 = " ++ show (not_equal 10 10))
    print ("not_equal 15 10 = " ++ show (not_equal 15 10))

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
