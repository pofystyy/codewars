# https://www.codewars.com/kata/55f81f9aa51f9b72a200002f

# Details:

# Write a function called findUnique which returns the only unique number from an array.

# All numbers in the unsorted array are present twice, except the one you have to find. 
# The numbers are always valid integer values between 1 and 2147483647, so no need for 
# type and error checking. The array contains at least one number and may contain millions 
# of numbers. So make sure your solution is optimized for speed.
# Example

# Input:

# [ 1, 8, 4, 4, 6, 1, 8 ]

# Expected output:

# 6

def find_unique(n)
  n = n.sort
  return n[0] if n[0] != n[1]
  n.map.with_index { |_, ind| return n[ind + 1] if n[ind] != n[ind + 1] && n[ind + 1] != n[ind + 2] }
end