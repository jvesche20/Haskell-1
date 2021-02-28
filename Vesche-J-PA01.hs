-- Intro. Functional Programming (MCS 3633)
-- Term Feb 2021
-- Jacob Vesche 000759071
-- Programming Problem # 01
main = do
 print(luhnDouble 9)
 print(luhnDouble 7)
 print(luhn 1 7 5 3)
 print(luhn 5 7 6 2)

 


luhnDouble :: Int -> Int
luhnDouble num1 | num1 <= 5    = 2 * num1 | otherwise = 2 * num1 - 9

luhn :: Int -> Int -> Int -> Int -> Bool
luhn n1 n2 n3 n4 =
    (luhnDouble n1 + n2 + luhnDouble n3 + n4)
    `mod` 10 == 0