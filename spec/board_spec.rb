require 'rspec'
require 'pry'
require './lib/cell'
require './lib/board'

RSpec.describe Board do
  it "creates a board class" do
    board1 = Board.new
    expect(board1).to be_an_instance_of(Board)
  end
end
