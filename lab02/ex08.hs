main = do 
       print (exp_ 10 3)
       print (exp_acc 10 3)

exp_ b e = if e == 0 then 1
           else if (even e) then (exp_ (b * b) (e `div` 2))
           else b * (exp_ (b * b) ((e - 1) `div` 2))

exp_acc b e = exp_help b e 1
              where exp_help b 0 acc = acc
                    exp_help b e acc = if (even e) then exp_help (b * b) (e `div` 2) acc
                                       else exp_help (b * b) ((e - 1) `div` 2) (acc * b)