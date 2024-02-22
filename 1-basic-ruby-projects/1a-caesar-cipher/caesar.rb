# Daniel Fletcher
# The Odin Project: Ruby
# Caesar Cipher


def caesar_cipher(phrase, shift)
  shifted = phrase.chars.map do |char|
    # Shift uppercase and lowercase letters
    if char.between?("A", "Z") || char.between?("a", "z")
      new_ord = char.ord + shift
      out_of_range = new_ord.between?(91, 96) || new_ord > 122
      out_of_range ? (new_ord - 26).chr : new_ord.chr

    # Leave all other characters unchanged
    else
      char
    end
  end

  # Return shifted characters as a single string
  shifted.join("")
end