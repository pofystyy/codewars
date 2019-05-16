# https://www.codewars.com/kata/52af7bf41f5a1291a6000025

# Details:

# Happy Holidays fellow Code Warriors!

# It's almost Christmas Eve, so we need to prepare some milk and cookies for Satan! Wait... when exactly do we need to do that?
# Time for Milk and Cookies

# Complete the function function that accepts a Date object, and returns true if it's Christmas Eve (December 24th), false otherwise.
# Examples

# time_for_milk_and_cookies(Date.new(2013, 12, 24))  # true
# time_for_milk_and_cookies(Date.new(2013, 1, 23))   # false
# time_for_milk_and_cookies(Date.new(3000, 12, 24))  # true

def time_for_milk_and_cookies date
  date.strftime("%m-%d") == "12-24"
end
