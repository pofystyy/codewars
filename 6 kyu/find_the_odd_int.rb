# https://www.codewars.com/kata/54da5a58ea159efa38000836

# Details:

# Given an array, find the int that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

def find_it(seq)
  seq.find { |i| seq.count(i).odd? }
end