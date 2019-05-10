# https://www.codewars.com/kata/5656b6906de340bd1b0000ac

# Details:

# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters,

#     each taken only once - coming from s1 or s2.

# Examples:

# a = "xyaabbbccccdefww"
# b = "xxxxyyyyabklmopq"
# longest(a, b) -> "abcdefklmopqwxy"

# a = "abcdefghijklmnopqrstuvwxyz"
# longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

def longest(a1, a2)
  (normalize(a1) + normalize(a2)).uniq.sort.join
end

def normalize(str)
  str.chars.uniq.sort
end
