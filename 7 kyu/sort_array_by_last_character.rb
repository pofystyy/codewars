# https://www.codewars.com/kata/55aea0a123c33fa3400000e7

# Details:

# Sort array by last character

# Write a function sortMe (sort_me in Python) to sort a given array by last character of the element.

# Element can be an integer or a string.
# Example:

# sortMe(['acvd','bcc']) => ['bcc','acvd']

# As the last characters of strings are 'd' and 'c'. As, 'c' comes before 'd', sorting by last character will give ['bcc', 'acvd']

# If two elements don't differ in the last character, that then they should be sorted by the order they come in the array.

def sortMe(arr)
  arr.sort_by { |i| i.to_s[-1] }
end
