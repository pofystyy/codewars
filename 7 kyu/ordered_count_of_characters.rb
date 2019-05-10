# https://www.codewars.com/kata/57a6633153ba33189e000074

# Details:

# Count the number of occurrences of each character and return it as a list of tuples in order of appearance.

# Example:

# ordered_count("abracadabra") == [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]

def ordered_count(str)
  str.chars.group_by { |x| x }.map { |k, v| [k, v.size] }
end
