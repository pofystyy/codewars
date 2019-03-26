# https://www.codewars.com/kata/5842df8ccbd22792a4000245

# Details:

# Write Number in Expanded Form

# You will be given a number and you will need to return it as a string in Expanded Form. For example:

# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'

# NOTE: All numbers will be whole numbers greater than 0.

# If you liked this kata, check out part 2!!

def expanded_form(num)
  num.digits.map.with_index { |num, index| "#{num}" + '0' * index }
            .delete_if { |nums| nums.start_with? '0' }
            .reverse.join ' + '
end