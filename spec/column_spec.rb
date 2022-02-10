require 'rspec'
require 'pry'
require './lib/board'
require './lib/column'

RSpec.describe Column do

  it 'exists' do
    board = Board.new
    a = Column.new(board.columns[0])
    expect(a).to be_an_instance_of(Column)
  end

  it 'starts with an array of 6 strings that include a dot and space' do
    board = Board.new
    a = Column.new(board.columns[0])
    expect(a.column).to eq([". ", ". ", ". ", ". ", ". ", ". "])
    expect(a.column.count).to eq(6)
  end

  xit 'checks if the column is full' do
    board = Board.new
    a = Column.new(board.columns[0])
    # binding.pry
    expect(a.playable?).to eq(true)
  end

end
