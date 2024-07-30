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
      format_code(guess) == @solution
    end

    private

    def format_code(code)
      code.upcase.split('')
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