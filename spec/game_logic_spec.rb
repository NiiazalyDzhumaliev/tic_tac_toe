require_relative '../lib/game_logic.rb'
describe GameLogic do
  let(:game_logic) { GameLogic.new }

  describe '#check_winner' do
    it 'returns false if no one wins with passed symbol' do
      expect(game_logic.check_winner('X')).to eql(false)
    end

    it 'returns true if player wins' do
      game_logic.update_board('X', 1)
      game_logic.update_board('X', 2)
      game_logic.update_board('X', 3)
      expect(game_logic.check_winner('X')).to eql(true)
    end
  end

  describe '#draw_check' do
    it 'returns true while there is available move' do
      expect(game_logic.draw_check).to eql(true)
    end

    it 'returns false if there is no available move' do
      game_logic.board = [%w[X O X], %w[O X O], %w[X O X]]
      expect(game_logic.draw_check).to eql(false)
    end
  end
end
