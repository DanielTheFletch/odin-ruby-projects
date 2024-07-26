# Daniel Fletcher
# The Odin Project: Ruby
# Tic Tac Toe

class Board
  attr_reader :board_state, :player_turn

  def initialize
    @board_state = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @player_turn = 0
  end

  # Update board state based on player selection
  def update_board(placement_index)
    success = false

    if valid_choice?(placement_index) && @player_turn < 9
      player_turn.even? ? value = -1 : value = 1
      @board_state[placement_index] = value
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

  # Return string representation of empty board
  def empty_board_display(top, middle, bottom)
    empty_board_string = ""

    # Top row
    empty_board_string << " #{top[0]} | #{top[1]} | #{top[2]}" << "\n"

    # Middle row and row borders
    empty_board_string << "-" * 11 << "\n"
    empty_board_string << " #{middle[0]} | #{middle[1]} | #{middle[2]}" << "\n"
    empty_board_string << "-" * 11 << "\n"

    # Bottom row
    empty_board_string << " #{bottom[0]} | #{bottom[1]} | #{bottom[2]}" << "\n"

    empty_board_string
  end

  # Check for game end
  def game_over?
    @player_turn == 9 || win_game?("X") || win_game?("O")
  end
  
  # Check win state for X or O
  def win_game?(player)
    placements = player == "X" ? get_x_placements : get_o_placements

    win_layouts.each do |layout|
      if placements.intersection(layout).size >= 3
        return true
      end
    end

    false
  end

  # --------------------

  private

  # Validate numeric board selection
  def valid_choice?(placement_index)
    placement_index.between?(0, 8) && @board_state[placement_index].zero?
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
      else
        row_string << " "
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