module Mastermind
  class Puzzle
    def initialize(solution, max_guesses)
      @solution = solution
      @guesses = 0
      @max_guesses = max_guesses
    end
  end
end