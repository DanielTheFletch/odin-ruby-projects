# Daniel Fletcher
# The Odin Project: Ruby
# Tic Tac Toe

require_relative 'board'

# Main application
def main
  # Display game title
  print_title

  # Create game board
  game_board = Board.new

  # Main game loop
  until game_board.game_over?
    # Indicate current player
    puts "'#{game_board.player_turn.even? ? "X" : "O"}' to play."
    puts

    # Extract/format board displays
    board_display = game_board.to_s.split("\n")
    empty_display = game_board.empty_board_display(
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ).split("\n")

    # Print board displays
    board_display.each_index do |index|
      print board_display[index]
      print " " * 8
      print empty_display[index]
      puts
    end
    puts

    # Prompt player input
    print "Enter '#{game_board.player_turn.even? ? "X" : "O"}' placement [1-9]: "
    game_board.update_board(gets.chomp.to_i - 1)
    puts
  end

  # Display game over message
  puts "GAME OVER!"
  puts

  # Display game results
  if game_board.win_game?("X")
    print_victory_x
  elsif game_board.win_game?("O")
    print_victory_o
  else
    print_draw
  end
end

# Print game title in ASCII art
def print_title
  puts ' _____ ___ ____           _____  _    ____           _____ ___  _____ '
  puts ' |_   _|_ _/ ___|         |_   _|/ \  / ___|         |_   _/ _ \| ____|'
  puts '   | |  | | |      _____    | | / _ \| |      _____    | || | | |  _|  '
  puts '   | |  | | |___  |_____|   | |/ ___ \ |___  |_____|   | || |_| | |___ '
  puts '   |_| |___\____|           |_/_/   \_\____|           |_| \___/|_____|'
  puts

  puts ' ' * 6 << '____        _             _____    _ _ _   _ '            
  puts ' ' * 6 << '|  _ \ _   _| |__  _   _  | ____|__| (_) |_(_) ___  _ __ ' 
  puts ' ' * 6 << '| |_) | | | | \'_ \| | | | |  _| / _` | | __| |/ _ \| \'_ \ '
  puts ' ' * 6 << '|  _ <| |_| | |_) | |_| | | |__| (_| | | |_| | (_) | | | |'
  puts ' ' * 6 << '|_| \_\\\\__,_|_.__/ \__, | |_____\__,_|_|\__|_|\___/|_| |_|'
  puts ' ' * 6 << '                   |___/                                  '
  puts
end

# Print victory message (X) in ASCII art
def print_victory_x
  puts '__  __              _             _' 
  puts '\ \/ /    __      _(_)_ __  ___  | |'
  puts ' \  /     \ \ /\ / / | \'_ \/ __| | |'
  puts ' /  \      \ V  V /| | | | \__ \ |_|'
  puts '/_/\_\      \_/\_/ |_|_| |_|___/ (_)'
  puts
end

# Print victory message (O) in ASCII art
def print_victory_o
  puts
end

# Print draw message in ASCII art
def print_draw
  puts
end

# Run application
main