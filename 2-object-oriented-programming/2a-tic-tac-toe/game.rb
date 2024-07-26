# Daniel Fletcher
# The Odin Project: Ruby
# Tic Tac Toe

# Main application

require_relative 'board'

game_board = Board.new

until game_board.player_turn == 9
  puts "TIC TAC TOE"
  puts "-----------"

  puts
  puts game_board
  puts

  print "Enter placement: "
  game_board.update_board(gets.chomp.to_i)
  puts
end
