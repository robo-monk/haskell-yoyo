fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)

main = do
    -- let num = 42
    let num = 10
    putStrLn ("The Factorial of " ++ show num ++ " is " ++ show (fact num))
