# https://www.codewars.com/kata/587731fda577b3d1b0001196

# Details:

# Write simple .camelCase method (camel_case function in PHP, CamelCase in C
# # or camelCase in Java) for strings. All words must have their first letter capitalized without spaces.

# For instance:

# 'hello case'.camelcase => HelloCase
# 'camel case word'.camelcase => CamelCaseWord

class String
  def camelcase
    self.split.map(&:capitalize).join
  end
end