module TicTacToe
  
  class Game

    attr_reader :player_x, :player_o, :board
    
    def initialize
      @player_x = Player.new("x")
      @player_o = Player.new("o")
      @board = Board.new
    end

    def finished_by_win?
      board.winning_state?(player_x.mark) || board.winning_state?(player_o.mark)
    end

    def who_won?
      return player_x if board.nr_of_marks(player_x.mark) > board.nr_of_marks(player_o.mark)
      player_o
    end
  end
end
