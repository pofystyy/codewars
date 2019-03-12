# https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9

# Details:

# Simple, given a string of words, return the length of the shortest word(s).

# String will never be empty and you do not need to account for different data types.

def find_short(s)
  s.split.min_by(&:length).length
end
