# https://www.codewars.com/kata/52e1476c8147a7547a000811

# Details:

# You need to write regex that will validate a password to make sure it meets the following criteria:

#     At least six characters long
#     contains a lowercase letter
#     contains an uppercase letter
#     contains a number

# Valid passwords will only be alphanumeric characters.

regex=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$/
