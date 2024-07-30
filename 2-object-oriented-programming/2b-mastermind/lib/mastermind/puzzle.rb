require 'colorize'

module Mastermind
  class Puzzle
    attr_reader :guesses

    def initialize(solution, max_guesses)
      @solution = format_code(solution)
      @guesses = 0
      @max_guesses = max_guesses
    end

    def process_guess(guess)
      @guesses += 1
      guess = format_code(guess)
      puts guess_to_string(guess)
      guess == @solution
    end

    private

    def format_code(code)
      code.upcase.split('')
    end

    def guess_to_string(guess)
      guess_string = ""

      guess.each { |color| guess_string << get_peg_string(color) << " " * 2 }

      guess_string
    end

    def get_peg_string(color)
      "O".colorize(:blue)
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