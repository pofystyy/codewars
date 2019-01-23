# https://www.codewars.com/kata/514a024011ea4fb54200004b

# Details:

# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

# domain_name("http://github.com/carbonfive/raygun") == "github"
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"

def domain_name(url)
  url.match(/(http[s]?:\/\/[\\w]{3}?\.?)(\w+-?\w+)/)[-1]
end
