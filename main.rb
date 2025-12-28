require_relative 'lib/tic_tac_toe'

game = TicTacToe::Game.new
puts game.board

game.board.make_mark(game.player_x.mark, 6)
puts game.board
puts game.board.nr_of_marks("x");

game.board.make_mark(game.player_x.mark, 5)
puts game.board
puts game.board.nr_of_marks("x");

game.board.make_mark(game.player_x.mark, 4)
puts game.board
puts game.board.nr_of_marks("x");

puts "Any winning states?"
p game.board.winning_state?("x")

p game.finished_by_win?

p game.who_won?
