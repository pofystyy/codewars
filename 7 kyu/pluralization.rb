# https://www.codewars.com/kata/57fe7ea808d102a2ba000edd

# Details:

# Your code should take an English noun with a regular plural form and return its plural.

# Rules for pluralization in English:

# If a singular noun ends in '-s', '-x', '-z', '-ch' or '-sh', add '-es'

# If a singular noun ends with a consonant and '-y', change '-y' to '-ies'.

# All other words just add '-s'

# None of the tests end in '-f' or '-o' and none are irregular nouns (e.g. child, mouse etc.)

# Examples

# table -> tables,
# window -> windows,
# church -> churches,
# watch -> watches,
# bus -> buses,
# box -> boxes,
# buzz -> buzzes,
# fly -> flies

def pluralize(word)
  case word
    when /(ch$|sh$|s$|x$|z$)/
      "#{word}es"
    when /[^aeiou]y$/
      "#{word.chop}ies"
    else
      "#{word}s"
  end
end
