module TicTacToe
  
  class Game

    attr_reader :player_x, :player_o, :board
    
    def initialize
      @player_x = Player.new("x")
      @player_o = Player.new("o")
      @board = Board.new
    end

    def finished?
      board.winning_state?("x") || board.winning_state?("o")
    end

    def who_won?
      # TODO
    end
  end

end
