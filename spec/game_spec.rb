require_relative '../lib/game_logic.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
require_relative '../lib/game_start.rb'

describe GameStart do
  let(:game_start) { GameStart.new }

  context '#name_check' do
    it 'it returns false if empty' do
      expect(game_start.name_check('')).to eql(false)
    end
  end

  context '#duplicate_check' do
    it 'if names are duplicated returns false' do
      expect(game_start.duplicate_check('John', 'John')).to eql(false)
    end
  end

  context '#sym_picker' do
    it "if symbol is 'X' returns 'O' " do
      expect(game_start.sym_picker('X')).to eql('O')
    end
  end
end

describe Player do
  let(:player){Player.new('John', 'X', 'O')}

  describe "#sym_check" do
    it "returns next player's symbol" do
      expect(player.sym_check("John")).to eql('O')
    end    
  end

  describe "#move_check" do
    it "returns false if move other than (1-9)" do
      expect(player.move_check(11)).to eql(false)
    end
  end
end
