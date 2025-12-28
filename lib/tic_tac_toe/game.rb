module TicTacToe
  
  class Game

    attr_reader :player_x, :player_o, :board
    
    def initialize
      @player_x = Player.new('x')
      @player_o = Player.new('o')
      @board = Board.new
    end

    def finished?
      # TODO
    end

    def name_of_winner
      # TODO
    end
  end

end
