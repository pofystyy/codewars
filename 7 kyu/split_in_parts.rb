# https://www.codewars.com/kata/5650ab06d11d675371000003

# Details:

# The aim of this kata is to split a given string into different strings of equal size (note size of strings is passed to the method)

# Example:

# Split the below string into other strings of size #3

# 'supercalifragilisticexpialidocious'

# Will return a new string
# 'sup erc ali fra gil ist ice xpi ali doc iou s'

# Assumptions:

# String length is always greater than 0
# String has no spaces
# Size is always positive

def split_in_parts (s, part_length)
  s.gsub(/(\w{#{part_length}})/, '\1 ').strip
end

# v2 (without regexp)

def split_in_parts (s, part_length)
  s.chars.each_slice(part_length).to_a.map(&:join).join(' ')
end
