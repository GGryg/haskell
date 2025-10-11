-- main :: IO ()
main = do
    a
    b
    c
    d
    e
    f
    g
    h
    i
    --j
    k
    l

a = print 10

b = print (5 + 3 + 4)

c = print (9 - 1)

d = print (6 / 2)

e = print (2 * 3 + 4 * 6)

f = print (7 < 6)

g = print (3 <= 5 && 5 <= 3)

h = let a = 3 
    in print (a + 1)

i = let a = 1 
    in let b = a + 1
        in print (a + b + a * b)

-- doesn't work
-- j = a

k = let square n = n * n
    in print (square 4)

l = let fac n = if n == 0 then 1 else n * fac (n - 1)
    in print (fac 5)