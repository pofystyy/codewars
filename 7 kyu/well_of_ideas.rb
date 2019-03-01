# https://www.codewars.com/kata/57f22b0f1b5432ff09001cab

# Details:

# For every good kata idea there seem to be quite a few bad ones!

# In this kata you need to check the provided 2 dimensional array (x) for good ideas 'good' and bad ideas 'bad'. If there are one or two good ideas, return 'Publish!', if there are more than 2 return 'I smell a series!'. If there are no good ideas, as is often the case, return 'Fail!'.

# The sub arrays may not be the same length.

# The solution should be case insensitive (ie good, GOOD and gOOd all count as a good idea). All inputs may not be strings.

def well(x)
  good_idea = x.flatten.select {|i| i =~ /(good)/i }.count
  if good_idea < 3
    (1..2).include?(good_idea) ? 'Publish!' : 'Fail!'
  else
    'I smell a series!'
  end
end
