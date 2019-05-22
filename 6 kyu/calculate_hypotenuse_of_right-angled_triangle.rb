# https://www.codewars.com/kata/525a3d6b85a9a47fcf00055a

# Details:

# To solve this Kata, complete the function, calculateHypotenuse(a,b), which will return the length of the hyptenuse for a right angled triangle with the other two sides having a length equal to the inputs. More details:

#     The returned value should be a number rounded to three decimal places
#     An error (ArgumentException in C#) should be thrown if an invalid input is provided (inputs should both be numbers that are above zero)

# calculateHypotenuse(1,1) # returns 1.414
# calculateHypotenuse(3,4) # returns 5
# calculateHypotenuse(-2,1) # raises exception
# calculateHypotenuse("one", "two") # raises exception

def calculateHypotenuse(a,b)
  Math.hypot(a, b).round(3)
end
