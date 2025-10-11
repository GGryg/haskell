-- main :: IO ()
main = do
    print ("even 2 = " ++ show (even_ 2))
    print ("even 1 = " ++ show (even_ 1))
    print ("odd 2 = " ++ show (odd_ 2))
    print ("odd 1 = " ++ show (odd_ 1))


-- even_ :: Int -> Bool
even_ n = if n == 0 then True else odd_ (n - 1)

-- odd_ :: Int -> Bool
odd_ n = if n == 0 then False else even_ (n - 1)

