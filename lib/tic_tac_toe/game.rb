module TicTacToe
  
  class Game

    attr_reader :player_x, :player_o, :board
    
    def initialize
      @player_x = Player.new("x")
      @player_o = Player.new("o")
      @board = Board.new
    end

    def finished_by_win?
      board.winning_state?("x") || board.winning_state?("o")
    end

    def who_won?
      return "x" if board.nr_of_marks("x") > board.nr_of_marks("o")
      "o"
    end
  end
end
