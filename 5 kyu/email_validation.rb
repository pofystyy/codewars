# https://www.codewars.com/kata/52711e5cc961c233d0000048

# Details:

# Email addresses are notoriously difficult to validate.

# Create a method that takes an email and returns true if valid, false otherwise.

# Tip: It doesn't have to be perfect.

# For example:

# validate('joe@example.com') => true
# validate('joe') => false

# Here's tool that may help: http://rubular.com/

# I suggest not using some code that you find on the internet. Yes, there are regexes that do email validation. But what is the purpose of copying and pasting?

# Also, you do not need to use a regex. There are many ways of solving this.

def validate(email)
  email.scan(/.+@.+\..+/).any?
end
