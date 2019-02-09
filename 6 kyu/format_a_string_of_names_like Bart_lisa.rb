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

# Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.

def list names
  n = names.count
  name = names.map { |i| i.values }
  case n
    when 0
      ''
    when 1
      name.join
    when 2
      name.join(' & ')
    when 3
      "#{name[0].join}, #{name[1].join} & #{name[2].join}"
    else
      name[0..-3].join(', ')+ ', ' + name[-2..-1].join(' & ')
  end
end
