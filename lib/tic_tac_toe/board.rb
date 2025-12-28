module TicTacToe

  class Board
    POSITIONS = {first:   [0,0], second: [0,1], third: [0,2],
                 fourth:  [1,0], fifth:  [1,1], sixth: [1,2],
                 seventh: [2,0], eighth: [2,1], ninth: [2,2]}
    
    attr_accessor :state

    def initialize
      @state = [["1", "2", "3"],
                ["4", "5", "6"],
                ["7", "8", "9"]]
    end

    def self.map_number_to_board(number)
      case number
      when 1 
        POSITIONS[:first]
      when 2
        POSITIONS[:second]
      when 3 
        POSITIONS[:third]
      when 4
        POSITIONS[:fourth]
      when 5
        POSITIONS[:fifth]
      when 6
        POSITIONS[:sixth]
      when 7
        POSITIONS[:seventh]
      when 8
        POSITIONS[:eighth]
      when 9
        POSITIONS[:ninth]
      else
        raise ArgumentError, "Provided value doesn't map to any board position"
      end
    end

    def to_s
      self.state.map{ |row| row.join(" ") }.join("\n")
    end

    def make_mark(mark, move_number)
      # TODO
    end

    def number_of_marks_per_player
      # TODO
    end

    def winning_state?
      # TODO
    end

  end
end
