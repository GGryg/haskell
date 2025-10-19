-- main :: IO ()
main = do
    (roots 25.0 100.0 4.0)
    (roots 25.0 20.0 4.0)
    (roots 25.0 10.0 4.0)

roots a b c = let delta = b * b - 4.0 * a * c
              in if (delta < 0.0) then print "No roots"
                 else if (delta == 0.0) then print ("One root: " ++ show ((-1.0 * b - (sqrt delta)) / (2 * a)))
                 else print ("Two roots: " ++ show ((-1.0 * b - (sqrt delta)) / (2 * a)) ++ ", " ++ show ((-1.0 * b + (sqrt delta)) / (2 * a)))
