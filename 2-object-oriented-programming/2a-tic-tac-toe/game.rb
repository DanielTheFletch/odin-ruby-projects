# Daniel Fletcher
# The Odin Project: Ruby
# Tic Tac Toe

# Main application

require_relative 'board'

game_board = Board.new

puts "TIC TAC TOE"
puts "-----------"

until game_board.game_over?
  puts "'#{game_board.player_turn.even? ? "X" : "O"}' to play."
  puts

  board_display = game_board.to_s.split("\n")
  empty_display = game_board.empty_board_display(
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ).split("\n")

  board_display.each_index do |index|
    print board_display[index]
    print " " * 8
    print empty_display[index]
    puts
  end
  puts

  print "Enter '#{game_board.player_turn.even? ? "X" : "O"}' placement [1-9]: "
  game_board.update_board(gets.chomp.to_i - 1)
  puts
end

puts "Game over!"
