# https://www.codewars.com/kata/58d76854024c72c3e20000de

# Details:

# Reverse every other word in a given string, then return the string. Throw away any leading or trailing whitespace, while ensuring there is exactly one space between each word. Punctuation marks should be treated as if they are apart of the word in this kata.

def reverse_alternate(string)
  string.split.map.with_index{ |word, index| index.odd? ? word.reverse : word }.join(" ")
end
