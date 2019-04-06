# https://www.codewars.com/kata/5259acb16021e9d8a60010af

# Details:

# Write a function that calculates the least common multiple of its arguments; each argument is assumed to be a non-negative integer. In the case that there are no arguments (or the provided array in compiled languages is empty), return 1.

def lcm(*nums)
  nums.reduce(1, :lcm)
end
