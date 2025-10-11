-- main :: IO ()
main = do
    print (gcd_ 4 16)
    print (lcm_ 4 3)


-- gcd_ :: Int -> Int -> Int
gcd_ x y = if y == 0 then x else gcd_ y (mod x y)

-- lcm_ :: Int -> Int -> Int
-- formula:
-- lcm(x, y) = |xy|/gcd(x,y)
-- or
-- lcm(x, y) = |x| * (|y|/gcd(x, y)) = |y| * (|x|/gcd(x, y))
-- needs div so it will be int not double
lcm_ x y = (abs x) * (div (abs y) (gcd x y))