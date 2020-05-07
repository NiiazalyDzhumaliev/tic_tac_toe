require_relative '../lib/game_logic.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
require_relative '../lib/game_start.rb'

describe GameStart do
  let(:game_start){GameStart.new}

  context "#name_check" do
    it "it returns false if empty" do
      expect(game_start.name_check('')).to eql(false)
    end
  end
end
