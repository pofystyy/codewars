# https://www.codewars.com/kata/526d42b6526963598d0004db

# Details:

# Write a class that, when given a string, will return an uppercase string with each letter shifted forward in the alphabet by however many spots the cipher was initialized to.

# For example:

# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.encode('Codewars') # returns 'HTIJBFWX'
# c.decode('BFKKQJX') # returns 'WAFFLES'

# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
# The shift will always be in range of [1, 26].

class CaesarCipher
  def initialize(shift)
    @shift = shift
    @letters = ('a'..'z').to_a
  end

  def encode(string)
    rotate(string, @shift)
  end

  def decode(string)
    rotate(string, -@shift)
  end

  private

  def rotate(string, arg)
    string.downcase.chars.map { |i| @letters.include?(i) ? @letters.rotate(arg)[@letters.index(i)] : i }.join.upcase
  end
end
