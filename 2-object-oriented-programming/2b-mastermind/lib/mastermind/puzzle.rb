# Daniel Fletcher
# The Odin Project: Ruby
# Mastermind

require 'colorize'

module Mastermind
  class Puzzle
    attr_reader :guesses

    def initialize(secret_code, max_guesses)
      @secret_code = code_to_colors(secret_code)
      @guesses = 0
      @max_guesses = max_guesses
    end

    # Process a player's guess
    def process_guess(guess)
      @guesses += 1
      guess = code_to_colors(guess)
      puts guess_to_string(guess)
      guess == @solution
    end

    private

    # Convert a character to a corresponding color symbol
    def char_to_color(char)
      case char
      when 'R' then :light_red
      when 'B' then :light_cyan
      when 'G' then :light_green
      when 'Y' then :light_yellow
      when 'P' then :light_magenta
      when 'W' then :light_white
      else nil
      end
    end

    # Convert a 4-char code into an array of symbols
    # e.g., 'RGBR' -> [:light_red, :light_green, :light_cyan, :light_red]
    def code_to_colors(code)
      code.upcase.split('').map { |char| char_to_color(char) }
    end

    # Convert a guess to colored pegs as a string
    def guess_to_string(guess)
      guess_string = ""

      guess.each { |color| guess_string << get_peg(color) << " " * 2 }

      guess_string
    end

    # Retrieve the string representation of a colored peg
    def get_peg(color)
      "O".colorize(color)
    end

    # Validate code length

    # Check for valid colors
    
    # Color list:
    # CODE PEGS
    #   Red
    #   Blue
    #   Green
    #   Yellow
    #   Orange
    #   Purple
    # KEY PEGS
    #   White
    #   Red  
  end
end