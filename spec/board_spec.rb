require_relative "../lib/tic_tac_toe"

describe TicTacToe::Board do
  subject(:board) { described_class.new }

  context "win conditions" do
    it "detects top row win for x" do
      board.state = [%w[x x x], %w[4 5 6], %w[7 8 9]]
      expect(board.winning_state?("x")).to be true
    end

    it "detects left column win for o" do
      board.state = [%w[o 2 3], %w[o 5 6], %w[o 8 9]]
      expect(board.winning_state?("o")).to be true
    end

    it "return false when no winning condition" do
      board.state = [%w[o 2 3], %w[x 5 6], %w[o 8 o]]
      expect(board.winning_state?("o")).to be false
      expect(board.winning_state?("x")).to be false
    end
  end

  describe "#nr_of_marks" do
    it "counts marks correctly" do
      board.state = [%w[o 2 3], %w[x 5 6], %w[o 8 o]]
      expect(board.nr_of_marks("o")).to eq(3)
    end
  end

  describe "#make_mark" do
    it "marks the right position" do
      board.make_mark("x", 6)
      state = [%w[1 2 3],
               %w[4 5 x],
               %w[7 8 9]]
      expect(board.state).to eq(state)
    end
  end
end
