require 'rspec'
require 'pry'
require './lib/board'
# require './lib/grid_map'

RSpec.describe Board do

  it "creates a board class" do
    new_game = Board.new
    expect(new_game).to be_an_instance_of(Board)
  end

  it "initializes a header, matrix, and columns" do
    new_game = Board.new
    expect(new_game.header.class).to eq(Array)
    expect(new_game.matrix.class).to eq(Array)
    expect(new_game.columns.class).to eq(Array)
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

   xit 'can take a snapshot of the current play state' do
     new_game = Board.new
     new_game.add_x(5,5)
     new_game.add_o(2,3)
     new_game.snapshot
     expect(new_game.columns[5].include?("X ")).to eq(true)
     expect(new_game.columns[3].include?("O ")).to eq(true)
     expect(new_game.matrix[5].include?("X ")).to eq(true)
     expect(new_game.matrix[2].include?("O ")).to eq(true)

   end

  xit 'can check how many empty cells are in a column' do
    new_game = Board.new
    new_game.render
    new_game.add_x(5,5)
    # binding.pry
    expect(new_game.cells_empty(5)).to eq(5)
  end

end
