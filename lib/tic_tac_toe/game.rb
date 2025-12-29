module TicTacToe
  class Game

    attr_reader :player_x, :player_o, :board
    
    def initialize
      @player_x = Player.new("x")
      @player_o = Player.new("o")
      @board = Board.new
    end

    def play
      starting_player = pick_random_starter
      puts "#{starting_player} will start the game!"
      player_cycler = make_player_cycler(starting_player)
      while (game.board.nr_of_marks("x") + game.board.nr_of_marks("o")) != 9 do
        current_player = player_cycler.next
        puts "#{current_player}, where will you put your mark?"
        puts board
        player_move = gets.chomp
        game.board.make_mark(current_player.mark, player_move)
        puts "New state of the board:"
        puts game.board
        if finished_by_win?
          puts "#{determine_winner} has won the game!"
          return
        end
      end
    end

    private

    def finished_by_win?
      board.winning_state?(player_x.mark) || board.winning_state?(player_o.mark)
    end

    def determine_winner
      return player_x if board.nr_of_marks(player_x.mark) > board.nr_of_marks(player_o.mark)
      player_o
    end

    def pick_random_starter
      return [player_x, player_o].sample
    end

    def make_player_cycler(starting_player)
      players = [player_x, player_o]
      player_cycler = players.rotate(players.index(starting_player)).cycle
      return player_cycler
    end
  end
end
