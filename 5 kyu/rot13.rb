# https://www.codewars.com/kata/52223df9e8f98c7aa7000062

# Details:

# How can you tell an extrovert from an introvert at NSA? Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE thl'f fubrf.

# I found this joke on USENET, but the punchline is scrambled. Maybe you can decipher it? According to Wikipedia, ROT13 (http://en.wikipedia.org/wiki/ROT13) is frequently used to obfuscate jokes on USENET.

# Hint: For this task you're only supposed to substitue characters. Not spaces, punctuation, numbers etc. Test examples:

# rot13("EBG13 rknzcyr.") == "ROT13 example.";
# rot13("This is my first ROT13 excercise!" == "Guvf vf zl svefg EBG13 rkprepvfr!"

def rot13(message)
  message.split('').inject('') do |text, char|
    text << case char
      when 'a'..'m', 'A'..'M'
        char.ord + 13
      when 'n'..'z', 'N'..'Z'
        char.ord - 13
      else
        char.ord
    end
  end
end
