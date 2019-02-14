# https://www.codewars.com/kata/51c8e37cee245da6b40000bd

# Details:

# Complete the solution so that it strips all text that follows any of a set of comment markers passed in. Any whitespace at the end of the line should also be stripped out.

# Example:

# Given an input string of:

# apples, pears # and bananas
# grapes
# bananas !apples

# The output expected would be:

# apples, pears
# grapes
# bananas

# The code would be called like so:

# result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
# # result should == "apples, pears\ngrapes\nbananas"

def solution(input, markers)
  input.split("\n").map do |str|
    markers.map { |symb| str.include?(symb) ? str.match(/^([^#{symb}]+)/)[0] : str }
  end
  .map { |a| a.sort_by(&:length) }
  .map { |i| i[0].rstrip }
  .join("\n")
end