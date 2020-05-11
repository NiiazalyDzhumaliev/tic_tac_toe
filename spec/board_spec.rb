require_relative '../lib/board.rb'
describe Board do
  let(:board) { Board.new }

  describe '#display_board' do
    it 'returns the board' do
      expect(board.display_board).to eql("1|2|3|\n4|5|6|\n7|8|9|\n")
    end
  end

  describe '#update_board' do
    it 'returns true if the board is updated' do
      expect(board.update_board('X', 1)).to eql(true)
    end

    it 'returns false if the cell is occupied' do
      board.update_board('X', 1)
      expect(board.update_board('X', 1)).to eql(false)
    end
  end

  describe '#win_generator' do
    let(:win_board) do
      [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [1, 4, 7],
        [2, 5, 8],
        [3, 6, 9],
        [1, 5, 9],
        [3, 5, 7]
      ]
    end

    it 'returns array with the win conditions' do
      expect(board.win_generator).to eql(win_board)
    end
  end
end
