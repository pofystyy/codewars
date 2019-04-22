# https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d

# Details:

# In this kata, you've to count letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

# Example:

# letter_count('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

def letter_count(str)
  str.chars.sort.group_by { |let| let }.map {|k, v| [k.to_sym, v.count] }.to_h
end
