# https://www.codewars.com/kata/58429d526312ce1d940000ee

# Details:

# Check that the two provided arrays both contain the same number of different unique items, regardless of order. For example in the following:

# [a,a,a,a,b,b] and [c,c,c,d,c,d]

# Both arrays have four of one item and two of another, so balance should return true.

# #Have fun!

def balance(arr1, arr2)
  counter(arr1) == counter(arr2)
end

def counter(arr)
  arr.group_by { |i| i }.values.map(&:count).sort
end
