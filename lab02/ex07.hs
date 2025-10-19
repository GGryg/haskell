main = do
       print (fib 4)
       print (fib_acc 4)
       print (fib 19)
       print (fib_acc 19)


fib n = if n == 0 then 0
        else if n == 1 then 1
        else (fib (n - 1)) + (fib (n - 2))

fac n = fac_help n 1
        where fac_help 0 acc = acc
              fac_help n acc = fac_help (n - 1) (n * acc)

fib_acc n = fib_help n 0 0
            where fib_help 0 prev acc = acc
                  fib_help n prev acc = fib_help (n - 1) (prev + acc) (prev + 1)