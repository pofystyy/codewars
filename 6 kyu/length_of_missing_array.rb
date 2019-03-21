# https://www.codewars.com/kata/57b6f5aadb5b3d0ae3000611

# Details:

# You get an array of arrays.
# If you sort the arrays by their length, you will see, that their length-values are consecutive.
# But one array is missing!


# You have to write a method, that return the length of the missing array.

# Example:
# [[1, 2], [4, 5, 1, 1], [1], [5, 6, 7, 8, 9]] --> 3


# If the array of arrays is null/nil or empty, the method should return 0.

# When an array in the array is null or empty, the method should return 0 too!
# There will always be a missing element and its length will be always between the given arrays.

# Have fun coding it and please don't forget to vote and rank this kata! :-)

# I have created other katas. Have a look if you like coding and challenges.

def getLengthOfMissingArray(array) 
  return 0 if array == [] || array.nil? || array.include?(nil)
  array = array.map(&:size).sort
  range = (array.first..array.last).to_a
  (range - array).size == 1 ? (range - array).first : 0
end