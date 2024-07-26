# Daniel Fletcher
# The Odin Project: Ruby
# Tic Tac Toe

# Main application

require_relative 'board'

game_board = Board.new

puts "TIC TAC TOE"
puts "-----------"

until game_board.game_over?
  puts "#{game_board.player_turn.even? ? "X" : "O"} to play."
  puts

  puts game_board
  puts

  print "Enter placement [1-9]: "
  game_board.update_board(gets.chomp.to_i - 1)
  puts
end

puts "Game over!"
