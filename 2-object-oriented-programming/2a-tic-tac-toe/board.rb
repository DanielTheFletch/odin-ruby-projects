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

  # Member data (read-only)
  attr_reader :board_state, :player_turn

  def initialize
    @board_state = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @player_turn = 0
  end

  def update_board(choice)
    if valid_choice?(choice)
      player_turn.even? ? value = 1 : value = -1
      @board_state[choice - 1] = value
      @player_turn += 1
      true
    else
      false
    end
  end

  private

  def valid_choice?(choice)
    choice.between?(1, 9) && @board_state[choice - 1] == 0
  end
end

board = Board.new()
board.update_board(1)
board.update_board(5)
board.update_board(3)
puts "Board State: #{board.board_state}"
