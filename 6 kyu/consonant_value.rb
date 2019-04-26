# https://www.codewars.com/kata/59c633e7dcc4053512000073

# Details:

# Given a lowercase string that has alphabetic characters only and no spaces, return the highest value of
# consonant substrings.

# For example: solve("zodiacs") = 26, because the consonant substrings are: z, d and cs with values z = 26,
# d = 4 and cs = 3 + 19 = 22. The highest is 26. --Note that the value of a = 1, b = 2 ... z = 26. --Vowels
# are a,e,i,o,u.

# For C: do not mutate input.

# More examples in test cases. Good luck!

# If you like this Kata, please try:

def solve(s)
  alphabet = ('a'..'z').to_a
  s.gsub(/[aeiou]/, ' ').split.map { |l| l.chars.map { |i| alphabet.index(i) + 1 }.sum }.max
end
