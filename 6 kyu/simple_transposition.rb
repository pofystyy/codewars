# https://www.codewars.com/kata/57a153e872292d7c030009d4


# Details:

# Simple transposition is a basic and simple cryptography technique. We make 2 rows and put first a letter in the Row 1, the second in the Row 2, third in Row 1 and so on until the end. Then we put the text from Row 2 next to the Row 1 text and thats it.

# Complete the function that recieves a string and encrypt it with this simple transposition.
# Example

# For example if the text to encrypt is: "Simple text", the 2 rows will be:
# Row 1   S   m   l     e   t
# Row 2   i   p   e   t   x

# So the result string will be: `"Sml etipetx"`

def simple_transposition(text)
  output = []
  2.times { |index| text.chars.each_slice(2).map { |char| output << char[index] } }
  output.compact.join
end
