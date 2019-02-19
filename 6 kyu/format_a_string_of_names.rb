# https://www.codewars.com/kata/53368a47e38700bd8300030d

# Details:

# Given: an array containing hashes of names

# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

# Example:

# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'

# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'

# list([ {name: 'Bart'} ])
# # returns 'Bart'

# list([])
# # returns ''

def list names
  values = names.map { |name| name[:name] }
  last_name = values[-1]
  values.pop
  return last_name.to_s if values.empty?
  "#{values.join(', ')} & #{last_name}"
end
