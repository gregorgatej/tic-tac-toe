require_relative 'lib/tic_tac_toe'

game = TicTacToe::Game.new
game.play

# puts game.board

# game.board.make_mark(game.player_x.mark, 6)
# puts game.board
# puts game.board.nr_of_marks("x");

# game.board.make_mark(game.player_x.mark, 5)
# puts game.board
# puts game.board.nr_of_marks("x");

# game.board.make_mark(game.player_x.mark, 4)
# puts game.board
# puts game.board.nr_of_marks("x");

# puts "Any winning states?"
# p game.board.winning_state?("x")

# p game.finished_by_win?

# puts game.who_won

# starting_player = game.pick_random_starter
# puts starting_player
# player_cycler = game.make_player_cycler(starting_player)
# puts player_cycler.next
# puts player_cycler.next

# while game.board.nr_of_marks("x") + game.board.nr_of_marks("o") != 9 do
  
# end


