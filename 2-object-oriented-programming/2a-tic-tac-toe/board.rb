# Daniel Fletcher
# The Odin Project: Ruby
# Tic Tac Toe

# Board class

# -- Member data --
# Board state
# Player turn tracker

# -- Behavior --
# Take turn (e.g., update board)
# Display board (e.g., print to terminal)
# Check victory condition (X's, O's)
# Check for a tie

class Board
  attr_reader :board_state, :player_turn

  def initialize
    @board_state = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
    @player_turn = 0
  end
end

board = Board.new()
puts "State: #{board.board_state}"
puts " Turn: #{board.player_turn}"
