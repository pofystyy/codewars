# https://www.codewars.com/kata/557efeb04effce569d000022

# Details:

# Implement a function called makeAcronym that returns the first letters of each word in a passed in string.

# Make sure the letters returned are uppercase.

# If the value passed in is not a string return 'Not a string'.

# If the value passed in is a string which contains characters other than spaces and alphabet letters, return 'Not letters'.

# If the string is empty, just return the string itself: "".

# EXAMPLES:

# 'Hello codewarrior' -> 'HC'

# 'a42' -> 'Not letters'

# 42 -> 'Not a string'

# [2,12] -> 'Not a string'

# {name: 'Abraham'} -> 'Not a string'

def make_acronym(phrase)
  return 'Not a string' unless phrase.class == String
  return '' if phrase.empty?
  phrase.match(/^[a-z\s]+$/i) ? phrase.split.map { |i| i[0].upcase }.join : 'Not letters'
end
