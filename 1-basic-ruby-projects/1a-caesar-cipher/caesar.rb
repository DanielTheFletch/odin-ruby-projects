# Daniel Fletcher
# The Odin Project: Ruby
# Caesar Cipher


# TODO: Fix late uppercase letters becoming early lowercase letters


# Required function: Apply Caesar cipher of specified shift amount
def caesar_cipher(phrase, shift)
  shifted = phrase.chars.map do |char|

    # Shift uppercase and lowercase letters
    if letter?(char)
      new_ord = char.ord + shift
      letter?(new_ord.chr) ? new_ord.chr : (new_ord - 26).chr

    # Leave all other characters unchanged
    else
      char
    end

  end

  # Return shifted characters as a single string
  shifted.join("")
end


# Helper function: Check if a character is an uppercase/lowercase letter
def letter?(char)
  char.between?("A", "Z") || char.between?("a", "z")
end