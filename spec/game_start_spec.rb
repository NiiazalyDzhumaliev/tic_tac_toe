require_relative '../lib/game_start.rb'

describe GameStart do
  let(:game_start) { GameStart.new }

  context '#name_check' do
    it 'returns false if empty' do
      expect(game_start.name_check('')).to eql(false)
    end

    it 'returns true if is not empty' do
      expect(game_start.name_check('John')).to eql(true)
    end
  end

  context '#duplicate_check' do
    it 'returns false if names are duplicated' do
      expect(game_start.duplicate_check('John', 'John')).to eql(false)
    end

    it 'returns true if names are not duplicated' do
      expect(game_start.duplicate_check('John', 'Sam')).to eql(true)
    end
  end

  context '#sym_picker' do
    it "returns 'O' if symbol is 'X'" do
      expect(game_start.sym_picker('X')).to eql('O')
    end

    it "returns 'X' if symbol is not 'X'" do
      expect(game_start.sym_picker('O')).to eql('X')
    end
  end
end
