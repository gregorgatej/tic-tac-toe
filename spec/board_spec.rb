require_relative "../lib/tic_tac_toe"

describe TicTacToe::Board do
  subject(:board) { described_class.new }

  context "top row filled with 'x'" do
    it "results in player_x winning" do
      board.state = [%w[x x x], %w[4, 5, 6], %w[7 8 9]]
      expect(board.winning_state?("x")).to be true
    end
  end
end
