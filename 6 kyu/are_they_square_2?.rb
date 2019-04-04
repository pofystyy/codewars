# https://www.codewars.com/kata/5697a0d35f754d1592000018

# Details:

# Another Kata testing an whether all elements of an array are square, although this time the array can be a 
# ultidemtional array with any number of dimensions.

# Your task - Write a function that checks whether all elements in a multidimensional array are square 
# numbers. The function should be able to take any number of array elements and any number of dimensions.

# Your function should return true if all elements are square numbers and false if not.

# An entirely empty array should return undefined.

# You can assume that all array elements will be positive integers.

# Examples:

# isSquare([1, 4, 9, 16, 25, 36]);
# //returns true

# isSquare([1, 2, 3, 4, 5, 6]);
# //returns false

# isSquare([1, [4], [9, 16, 25], [36, 49, [64, 81]], [100, [121, 144, [169]]], [196, [225, [256, 289, [324, 
#   [361, 400]]]]]]);
# //returns true

def is_square(arr)
  return nil if arr.empty?
  arr.flatten.find { |i| i = Math.sqrt(i); i.to_int != i }.nil?
end