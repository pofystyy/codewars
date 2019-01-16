# https://www.codewars.com/kata/574bd867d277832448000adf

# Details:

# Are you a file extension master? Let's find out by checking if Bill's files are images or audio files. Please use regex if available natively for your language.

# You will create 2 string methods:

#     isAudio/is_audio, matching 1 or + uppercase/lowercase letter(s) (combination possible), with the extension .mp3, .flac, .alac, or .aac.

#     isImage/is_image, matching 1 or + uppercase/lowercase letter(s) (combination possible), with the extension .jpg, .jpeg, .png, .bmp, or .gif.

# Note that this is not a generic image/audio files checker. It's meant to be a test for Bill's files only. Bill doesn't like punctuation. He doesn't like numbers, neither. Thus, his filenames are letter-only

# Rules

#     It should return true or false, simply.
#     File extensions should consist of lowercase letters and numbers only.
#     File names should consist of letters only (uppercase, lowercase, or both)

# Good luck!

class String
  def is_audio
    self.match?(/^[a-zA-Z]+\.(mp3|flac|aac|alac)$/)
  end

  def is_img
    self.match?(/^[a-zA-Z]+\.(jpg|jpeg|bmp|gif|png)$/)
  end
end

# v2 (without regexp)

class String
  def is_audio
    name, format = self.split('.')
    return false unless %w[ mp3 flac aac alac ].include?(format)
    check_name(name)
  end

  def is_img
    name, format = self.split('.')
    return false unless %w[ jpg jpeg bmp gif png ].include?(format)
    check_name(name)
  end

  private

  def check_name(name)
    invalid_values = %w[ 1 2 3 4 5 6 7 8 9 0 - _ \ ]
    name.chars.find { |char| invalid_values.include?(char) }.nil?
  end
end
