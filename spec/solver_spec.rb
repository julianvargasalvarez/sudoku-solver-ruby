require 'rspec'

one = [0,1,8,0,3,0,0,4,0,
       6,0,0,0,0,5,0,0,2,
       0,0,0,0,0,4,0,0,8,
       0,7,9,0,0,0,0,0,0,
       3,0,0,0,0,0,0,0,1,
       0,0,0,0,0,0,2,8,0,
       2,0,0,9,0,0,0,0,0,
       1,0,0,6,0,0,0,0,7,
       0,6,0,0,4,0,1,3,0]

two = [0,4,0,2,0,0,3,0,0,
       0,0,0,0,0,7,0,0,8,
       8,0,5,3,0,0,1,0,0,
       0,9,0,0,0,0,4,0,6,
       0,0,0,0,0,0,0,0,0,
       5,0,6,0,0,0,0,9,0,
       0,0,7,0,0,5,6,0,2,
       2,0,0,4,0,0,0,0,0,
       0,0,8,0,0,6,0,7,0]
def row(board, _row)
  board[ (_row*9)...(_row*9+9) ]
end

RSpec.describe "sudoku solver" do
  describe "#row" do
    it "returns the row for the given index" do
      expect(row(one, 0)).to eq([0,1,8,0,3,0,0,4,0])
      expect(row(one, 8)).to eq([0,6,0,0,4,0,1,3,0])
      expect(row(one, 4)).to eq([3,0,0,0,0,0,0,0,1])
    end
    it "returns an empty arry if the row is out of bounds" do
      expect(row(one, -1)).to eq([])
      expect(row(one, 9)).to eq([])
    end
  end
end
