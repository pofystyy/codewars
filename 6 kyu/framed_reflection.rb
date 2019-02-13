# https://www.codewars.com/kata/581331293788bc1702001fa6

# Details:

# You are given a message (text) that you choose to read in a mirror (weirdo). Return what you would see, complete with the mirror frame. Example:

# 'Hello World'

# would give:

# Words in your solution should be left-aligned.

def mirror(text)
  arr   = text.split
  width = arr.map(&:size).max
  stars = '*' * (width + 4)
  [stars, arr.map{ |w| "* #{w.reverse.ljust(width)} *" }, stars].join("\n")
end
