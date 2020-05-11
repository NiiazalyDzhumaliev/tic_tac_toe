require_relative '../lib/player.rb'

describe Player do
  let(:player) { Player.new('John', 'X', 'O') }

  describe '#sym_check' do
    it "returns second player's symbol" do
      expect(player.sym_check('John')).to eql('O')
    end

    it "returns first player's symbol" do
      expect(player.sym_check('Sam')).to eql('X')
    end
  end

  describe '#move_check' do
    it 'returns false if move other than (1-9)' do
      expect(player.move_check(11)).to eql(false)
    end

    it 'returns true if move in (1-9) range' do
      expect(player.move_check(2)).to eql(true)
    end
  end
end
