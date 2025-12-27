module TicTacToe

  class Board
    POSITIONS = {first:   [0,0], second: [0,1], third: [0,2],
                 fourth:  [1,0], fifth:  [1,1], sixth: [1,2],
                 seventh: [1,0], eighth: [1,1], ninth: [1,2]}
    
    attr_accessor :state

    def initialize
      @state = [["_", "_", "_"],
                ["_", "_", "_"],
                ["_", "_", "_"]]
    end

    def self.map_number_to_board(number)
      case number
      when 7 
        POSITIONS[:first]
      when 8
        POSITIONS[:second]
      when 9 
        POSITIONS[:third]
      when 4
        POSITIONS[:fourth]
      when 5
        POSITIONS[:fifth]
      when 6
        POSITIONS[:sixth]
      when 1
        POSITIONS[:seventh]
      when 2
        POSITIONS[:eighth]
      when 3
        POSITIONS[:ninth]
      else
        raise ArgumentError, "Provided value doesn't map to any board position"
      end

      def display
        # TODO
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
end
