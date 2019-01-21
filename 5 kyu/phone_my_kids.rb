# https://www.codewars.com/kata/5200165c39ae4c612200027b

# Details:

# Sometimes you need to know all classes that inherited from you, and to be able to do simple things like listing or calling all of them.

# Write a class called "Mother" that tracks all inheritances that are done to her (and her kids), together with a class method "phone_kids" that calls in turn the class method "phone" of all kids.

# So if you have two kids

# class Foo < Mother
# end

# class Bar < Mother
# end

# The line

# Mother.phone_kids

# Would call (in either order)

# Foo.phone
# Bar.phone

class Mother

  @subclasses = []

  def self.inherited(subclass)
    @subclasses << subclass
  end

  def self.phone_kids
    @subclasses.each(&:phone)
  end
end
