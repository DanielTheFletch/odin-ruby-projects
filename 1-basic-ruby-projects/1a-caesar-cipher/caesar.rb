# Daniel Fletcher
# The Odin Project: Ruby
# Caesar Cipher


# Required function: Apply Caesar cipher of specified shift amount
def caesar_cipher(phrase, shift)
  shifted = phrase.chars.map do |char|

    # Only shift uppercase and lowercase letters
    if upper?(char)
      shift(char, shift, "A".ord)
    elsif lower?(char)
      shift(char, shift, "a".ord)
    else
      char
    end
  end

  # Return shifted characters as a single string
  shifted.join("")
end


# Helper function: Determine if a character is an uppercase letter
def upper?(char)
  char.between?("A", "Z")
end


# Helper function: Determine if a character is a lowercase letter
def lower?(char)
  char.between?("a", "z")
end


# Helper function: Shift a letter a specified amount (preserve case)
def shift(char, shift, distance_from_zero)
  new_ord = (char.ord - distance_from_zero) + shift
  new_ord = (new_ord % 26) + distance_from_zero
  new_ord.chr
end