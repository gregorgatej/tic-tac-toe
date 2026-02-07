require_relative "../lib/tic_tac_toe"

describe TicTacToe::Game do
  subject(:game) { described_class.new }

  describe "#play" do
    it "prompts, makes a mark and stops when someone wins" do
      board = instance_double(TicTacToe::Board)
      allow(board).to receive(:nr_of_marks).with("o").and_return(0)
      allow(board).to receive(:nr_of_marks).with("x").and_return(0)
      game.instance_variable_set(:@board, board)

      allow(game).to receive(:pick_random_starter).and_return(game.player_x)
      allow(game).to receive(:make_player_cycler).and_return([game.player_x].cycle)
      allow(game).to receive(:finished_by_win?).and_return(true)
      allow(game).to receive(:gets).and_return("1\n")
      allow(game).to receive(:puts)

      expect(board).to receive(:make_mark).with("x", "1")
      game.play
    end
  end
end
