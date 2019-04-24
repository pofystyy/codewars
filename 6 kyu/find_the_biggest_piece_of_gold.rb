# https://www.codewars.com/kata/571943d59906affd0b001078

# Details:

# You are to write a function (biggest_gold_piece) which, given a few pieces of soil with gold in it will return the piece with the most gold.

# The input of the function is a string containing one or more pieces of soil. Each piece is delimited by punctuation, so for instance the string "ergreg, ; cdrg." has three pieces: "ergreg", " " and " cdrg".

# A piece of gold is defined as the character 'G' (case insensitive) followed by its weight, so that the piece "we G5r" weighs 5.

# If multiple golds are found in one piece of soil they should be added together, so that the following piece of soil "g5 g5; sdg g44" has two pieces of soil, both containing gold, with respective values of 10 and 44.

# The function should return the piece with most gold in it, in its raw state (as a string). For example, biggest_gold_piece("null, g55 dds; G43w") should return " g55 dds" as this is the piece of soil with most gold (55).

# ###Expected Input You can assume that the input will always be a string with at least one piece of soil containing gold.

# Good Luck!


def biggest_gold_piece(soil)
  soil = soil.gsub('.', '').gsub(';', ',').split(',')
  piece = soil.map { |soil| soil.match(/g/i) ? soil.gsub(/\D/, '+') : '' }.map { |piece| piece.match(/\d/) ? piece : 0}
  count_of_gold = piece.map { |gold| gold.to_s.split('+').map(&:to_i).sum }
  soil[count_of_gold.index(count_of_gold.max)]
end
