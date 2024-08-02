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
      "O".colorize(char_to_color(color))
    end

    def char_to_color(char)
      case char
      when 'R' then :red
      when 'B' then :light_cyan
      when 'G' then :light_green
      when 'Y' then :light_yellow
      when 'P' then :light_magenta
      when 'W' then :light_white
      else nil
      end
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