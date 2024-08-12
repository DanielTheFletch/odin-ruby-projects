# Daniel Fletcher
# The Odin Project: Ruby
# Mastermind

require_relative 'lib/mastermind'

COLORS = ['R', 'B', 'G', 'Y', 'P', 'W']

# color1 = COLORS[Random.rand(6)]
# color2 = COLORS[Random.rand(6)]
# color3 = COLORS[Random.rand(6)]
# color4 = COLORS[Random.rand(6)]

color1 = 'R'
color2 = 'G'
color3 = 'B'
color4 = 'R'

puzzle = Mastermind::Puzzle.new("#{color1}#{color2}#{color3}#{color4}", 12)

guess = gets.chomp

until puzzle.process_guess(guess)
  guess = gets.chomp
end

puts String.colors

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