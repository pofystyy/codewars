# https://www.codewars.com/kata/5cc1e284ece231001ccf7014

# Details:

# Upside-Down Pyramid Addition is the process of taking a list of numbers and consecutively adding them together until you reach one number.

# When given the numbers 2, 1, 1 the following process occurs:

#  2   1   1
#    3   2
#      5

# This ends in the number 5.
# YOUR TASK

# Given the right side of an Upside-Down Pyramid (Ascending), write a function that will return the original list.
# EXAMPLE

# reverse_pyramid([5, 2, 1]) == [2, 1, 1]

# NOTE: The Upside-Down Pyramid will never be empty and will always consist of positive integers ONLY.

def reverse_pyramid(r)
  arr = []
  last = r.last
  until r.size == 1
    r = r.each_cons(2).to_a.map { |i| i.first - i.last }
    arr << r.last
  end
  arr.reverse << last
end
