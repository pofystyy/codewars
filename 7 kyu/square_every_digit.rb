# https://www.codewars.com/kata/546e2562b03326a88e000020

# Details:

# Welcome. In this kata, you are asked to square every digit of a number.

# For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

# Note: The function accepts an integer and returns an integer

def square_digits num
  num.digits.reverse.map { |i| i ** 2 }.join.to_i
end
