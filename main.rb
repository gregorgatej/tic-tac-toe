require_relative 'lib/tic_tac_toe'

game = TicTacToe::Game.new
puts game.board

game.board.make_mark(game.player_x.mark, 6)
puts game.board
