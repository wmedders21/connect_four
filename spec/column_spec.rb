require 'rspec'
require 'pry'
require './lib/player'
require './lib/turn'
require './lib/board'
require './lib/column'

RSpec.describe Column do

  it 'exists' do
    board = Board.new
    a = Column.new(board.matrix.transpose[0])
    expect(a).to be_an_instance_of(Column)
  end

  it 'starts with an array of 6 strings that include a dot and space' do
    board = Board.new
    a = Column.new(board.matrix.transpose[0])
    expect(a.column).to eq([". ", ". ", ". ", ". ", ". ", ". "])
    expect(a.column.count).to eq(6)
  end

  it 'checks if the column is full' do
    board = Board.new
    a = Column.new(board.matrix.transpose[0])
    expect(a.playable?).to eq(true)
    board.add_x(0,0)
    board.add_x(1,0)
    board.add_x(2,0)
    board.add_x(3,0)
    board.add_x(4,0)
    board.add_x(5,0)
    #column
    a = Column.new(board.matrix.transpose[0])
    #binding.pry

    expect(a.playable?).to eq(false)

  end

end
