# https://www.codewars.com/kata/52fea6fd158f0576b8000089

# Details:

# Write a module Converter that can take ASCII text and convert it to hexadecimal. The class should also be able to take hexadecimal and convert it to ASCII text.
# Example

# Converter.to_hex("Look mom, no hands")
# => "4c6f6f6b206d6f6d2c206e6f2068616e6473"

# Converter.to_ascii("4c6f6f6b206d6f6d2c206e6f2068616e6473")
# => "Look mom, no hands"

module Converter
  def self.to_ascii(hex)
    hex.split.pack('H*')
  end

  def self.to_hex(ascii)
    ascii.unpack("H*").join
  end
end
