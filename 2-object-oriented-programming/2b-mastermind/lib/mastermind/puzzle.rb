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

      guess_pegs = get_guess_pegs(guess)
      accuracy_pegs = get_accuracy_pegs(guess)

      guess_display = guess_pegs.join()
      accuracy_display1 = accuracy_pegs[0...2].join()
      accuracy_display2 = accuracy_pegs[2...4].join()

      main_display = "\n#{guess_display}" << " " * 10 << "#{accuracy_display1}"
      main_display += "\n" << " " * 22 << "#{accuracy_display2}" << "\n"

      puts main_display
      guess == @secret_code
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

    # Convert a guess to colored pegs as an array of strings
    def get_guess_pegs(guess)
      guess_pegs = []

      guess.each { |color| guess_pegs.push(get_peg(color) << " " * 2) }

      guess_pegs
    end

    def get_accuracy_pegs(guess)
      red_pegs = 0
      white_pegs = 0
      solution_hash = get_solution_hash

      # Exact matches
      guess.each_index do |index|
        color = guess[index]
        if color == @secret_code[index] && solution_hash[color] > 0
          red_pegs += 1
          solution_hash[color] -= 1
        end
      end

      # Near matches
      guess.each_index do |index|
        color = guess[index]
        if color != @secret_code[index] && solution_hash[color] > 0
          white_pegs += 1
          solution_hash[color] -= 1
        end
      end

      # Create string
      accuracy_pegs = []
      red_pegs.times { |i| accuracy_pegs.push("*".colorize(:red) << " " * 2) }
      white_pegs.times { |i| accuracy_pegs.push("*".colorize(:white) << " " * 2) }

      empty_peg_slots = 4 - (red_pegs + white_pegs)
      empty_peg_slots.times { |i| accuracy_pegs.push("_" << " " * 2) }

      accuracy_pegs
    end

    # Retrieve the string representation of a colored peg
    def get_peg(color)
      "O".colorize(color)
    end

    def get_solution_hash
      hash = {
        light_red: 0,
        light_cyan: 0,
        light_green: 0,
        light_yellow: 0,
        light_magenta: 0,
        light_white: 0
      }

      @secret_code.each { |color| hash[color] += 1 }

      hash
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