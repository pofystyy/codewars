# https://www.codewars.com/kata/5314b3c6bb244a48ab00076c

# Details:

# In some countries of former Soviet Union there was a belief about lucky tickets. A transport ticket of any sort was believed to posess luck if sum of digits on the left half of its number was equal to the sum of digits on the right half. Here are examples of such numbers:

# 003111    #             3 = 1 + 1 + 1
# 813372    #     8 + 1 + 3 = 3 + 7 + 2
# 17935     #         1 + 7 = 3 + 5  // if the length is odd, you should ignore the middle number when adding the halves.
# 56328116  # 5 + 6 + 3 + 2 = 8 + 1 + 1 + 6

# Such tickets were either eaten after being used or collected for bragging rights.

# Your task is to write a funtion luck_check(str), which returns true/True if argument is string decimal representation of a lucky ticket number, or false/False for all other numbers. It should throw errors for empty strings or strings which don't represent a decimal number.

def luck_check (str)
  raise ArgumentError if str.match?(/\D/) || str.empty?
  middle = str.size / 2
  first_half, second_half = str.split(/(\d{#{middle}})\d?(\d{#{middle}})/).last(2)
  first_half.to_i.digits.sum == second_half.to_i.digits.sum
end

# v2 (without regexp)

def luck_check (str)
  num = %w(1 2 3 4 5 6 7 8 9 0)
  raise ArgumentError if !str.chars.map { |i| num.include? i }.all? || str.empty?
  middle = str.size / 2
  first_half = str.chars[0, middle]
  second_half = str.chars[0-middle, middle]
  first_half.map(&:to_i).sum == second_half.map(&:to_i).sum
end
