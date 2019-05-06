# https://www.codewars.com/kata/5738f5ea9545204cec000155

# Details:

# Bob is a lazy man.

# He needs you to create a method that can determine how many letters and digits are in a given string.

# example:

# "hel2!lo" --> 6

# "wicked .. !" --> 6

# "!?..A" --> 1

# Complete the method:

# C++, Java: CountLettersAndDigits(string input)

# Ruby: count_letters_and_digits(input)

# Haskell: countLettersAndDigits :: String -> Int

def count_letters_and_digits(input)
  input.scan(/[a-z0-9]/i).count
end
