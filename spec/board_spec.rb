require 'rspec'
require 'pry'
require './lib/board'

RSpec.describe Board do

  it "creates a board class" do
    new_game = Board.new
    expect(new_game).to be_an_instance_of(Board)
  end

  it "initializes a header and matrix" do
    new_game = Board.new
    expect(new_game.header.class).to eq(Array)
    expect(new_game.matrix.class).to eq(Array)
  end

  it 'can render the game board' do
    new_game = Board.new
    new_game.render
    # binding.pry
    expect(new_game.render.class).to eq(Array)

  end

  it 'can add an X to the board' do
    new_game = Board.new
    new_game.add_x(5,5)
    new_game.render
    expect(new_game.matrix[5][5]).to eq("X ")

  end

  it 'can add an O to the board' do
    new_game = Board.new
    new_game.add_x(5,5)
    new_game.add_o(2,3)
    new_game.render
    expect(new_game.matrix[2][3]).to eq("O ")

  end

  it "can check for a diagonal win" do
    new_game = Board.new
    new_game.add_x(3,0)
    new_game.add_x(2,1)
    new_game.add_x(1,2)
    new_game.add_x(0,3)
    new_game.render
    expect(new_game.win_scan).to eq(true)
    end

  it "can check for a horizonal win" do
    new_game = Board.new
    new_game.add_x(0,0)
    new_game.add_x(0,1)
    new_game.add_x(0,2)
    new_game.add_x(0,3)
    new_game.render
    expect(new_game.win_scan).to eq(true)
  end

  it "can check for a vertical win" do
    new_game = Board.new
    new_game.add_x(0,0)
    new_game.add_x(1,0)
    new_game.add_x(2,0)
    new_game.add_x(3,0)
    new_game.render
    expect(new_game.win_scan).to eq(true)
  end

  it 'can check for a draw' do
    new_game = Board.new
    new_game.render
    expect(new_game.draw?).to eq(false)
    new_game.add_x(0,0)
    new_game.add_x(0,1)
    new_game.add_x(0,2)
    new_game.add_o(0,3)
    new_game.add_x(0,4)
    new_game.add_x(0,5)
    new_game.add_x(0,6)
    new_game.add_x(1,0)
    new_game.add_x(1,1)
    new_game.add_x(1,2)
    new_game.add_o(1,3)
    new_game.add_x(1,4)
    new_game.add_x(1,5)
    new_game.add_x(1,6)
    new_game.add_x(2,0)
    new_game.add_x(2,1)
    new_game.add_o(2,2)
    new_game.add_o(2,3)
    new_game.add_o(2,4)
    new_game.add_x(2,5)
    new_game.add_x(2,6)
    new_game.add_o(3,0)
    new_game.add_o(3,1)
    new_game.add_o(3,2)
    new_game.add_x(3,3)
    new_game.add_o(3,4)
    new_game.add_o(3,5)
    new_game.add_o(3,6)
    new_game.add_x(4,0)
    new_game.add_x(4,1)
    new_game.add_x(4,2)
    new_game.add_o(4,3)
    new_game.add_x(4,4)
    new_game.add_x(4,5)
    new_game.add_x(4,6)
    new_game.add_x(5,0)
    new_game.add_x(5,1)
    new_game.add_x(5,2)
    new_game.add_o(5,3)
    new_game.add_x(5,4)
    new_game.add_x(5,5)
    new_game.add_x(5,6)
    new_game.render
    expect(new_game.draw?).to eq(true)
  end
end
