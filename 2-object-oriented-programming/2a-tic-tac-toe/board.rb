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

  # Update board state based on player selection
  def update_board(choice)
    success = false

    if valid_choice?(choice) && @player_turn < 9
      player_turn.even? ? value = -1 : value = 1
      @board_state[choice - 1] = value
      @player_turn += 1
      success = true
    end

    success
  end

  # Return string representation of board state
  def to_s
    board_string = ""

    # Top row
    board_string << row_to_string(0..2) << "\n"

    # Middle row and row borders
    board_string << "-" * 11 << "\n"
    board_string << row_to_string(3..5) << "\n"
    board_string << "-" * 11 << "\n"

    # Bottom row
    board_string << row_to_string(6..8) << "\n"

    board_string
  end
  
  # Check winning state for X or O
  def win_game?(player)
    placements = player == "X" ? get_x_placements : get_o_placements

    win_layouts.each do |layout|
      if placements.intersection(layout).size >= 3
        return true
      end
    end

    false
  end

  private

  # Validate numeric board selection
  def valid_choice?(choice)
    choice.between?(1, 9) && @board_state[choice - 1].zero?
  end

  # Retrieve board row as string
  def row_to_string(row)
    row_string = ""

    row.each do |index|
      # Row content
      if @board_state[index] < 0
        row_string << "X".rjust(2)
      elsif @board_state[index] > 0
        row_string << "O".rjust(2)
      else
        row_string << " " * 2
      end

      # Row border
      if index % 3 != 2
        row_string << "|".rjust(2)
      end
    end

    row_string
  end

  # Retrieve index values of X board placements
  def get_x_placements
    (0..8).filter { |index| @board_state[index] < 0 }
  end

  # Retrieve index values of O board placements
  def get_o_placements
    (0..8).filter { |index| @board_state[index] > 0 }
  end

  # Array of combinations of index values representing a win state
  def win_layouts
    [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],      # Horizontal
      [0, 3, 6], [1, 4, 7], [2, 5, 8],      # Vertical
      [0, 4, 8], [2, 4, 6]                  # Diagonal
    ]
  end
end