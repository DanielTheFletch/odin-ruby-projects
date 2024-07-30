# Daniel Fletcher
# The Odin Project: Ruby
# Mastermind

require_relative 'lib/mastermind'

puzzle = Mastermind::Puzzle.new('RGBR', 12)

guess = gets.chomp

until puzzle.process_guess(guess)
  guess = gets.chomp
end

# Puzzle class
# Initialize with correct solution
# Track guesses
# Encapsulate guess validation logic

# Computer class
# Parent class for DecoderCOM, EncoderCOM

# EncoderCOM
# Generates a code for guessing

# DecoderCOM
# Attempts to decode a code

# Mastermind module
# Encapsulates all relevant class logic