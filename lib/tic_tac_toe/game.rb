module TicTacToe
  
  class Game
    
    def initialize
      player_x = Player.new('x')
      player_o = Player.new('o')
      board = Board.new
    end

    def finished?
      # TODO
    end

    def name_of_winner
      # TODO
    end
  end

end
