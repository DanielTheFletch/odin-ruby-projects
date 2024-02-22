# Daniel Fletcher
# The Odin Project: Ruby
# Caesar Cipher


def caesar_cipher(phrase, shift)
  chars = phrase.chars.map do |char|
    char = (char.ord + shift).chr
  end

  chars.join("")
end


