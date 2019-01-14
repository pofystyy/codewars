# https://www.codewars.com/kata/520b9d2ad5c005041100000f

# Details:

# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.
# Examples

# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

def pig_it text
  text.split.map { |i| i =~ /\w+/ ? i.chars.rotate.join + "ay" : i }.join(' ')
end
