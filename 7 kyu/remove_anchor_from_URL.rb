# https://www.codewars.com/kata/51f2b4448cadf20ed0000386

# Details:

# Complete the function/method so that it returns the url with anything after the anchor (#) removed.

# Examples:

# # returns 'www.codewars.com'
# remove_url_anchor('www.codewars.com#about')

# # returns 'www.codewars.com?page=1' 
# remove_url_anchor('www.codewars.com?page=1') 

def remove_url_anchor(url)
  url.gsub /(.+)(#.+)/, '\1'
end