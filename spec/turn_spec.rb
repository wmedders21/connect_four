require 'pry'
require 'rspec'
require './lib/turn'
require './lib/player'
require './lib/board'

RSpec.describe Turn do
  it "exists" do
    player_1 = Player.new(:human)
    board = Board.new
    #player2 = Player.new("robot")
    turn_1 = Turn.new(player_1.type, board)
    expect(turn_1).to be_an_instance_of(Turn)
  end

  it "can perform a human turn" do
    player_1 = Player.new(:human)
    board = Board.new
    turn_1 = Turn.new(player_1.type, board)
    turn_1.stub(:gets).and_return("a")
    expect(turn_1.go).to eq("a")
  end

  it "can perform a robot turn" do
    player_2 = Player.new(:robot)
    board = Board.new
    turn_2 = Turn.new(player_2.type, board)
    turn_2.stub(:select).and_return("b")
    allow(turn_2.go).to receive("b")
  end

  it "can determine if an entry is invalid" do
    player_1 = Player.new(:human)
    board = Board.new
    turn_1 = Turn.new(player_1.type, board)
    turn_1.go
    turn_1.stub(:gets).and_return("p")
    turn_1.valid_input?
    expect(turn_1.valid_input?).to eq(false)
  end

  it 'can take input and refer to a board column' do
    new_board = Board.new
    player_1 = Player.new(:human)
    turn_1 = Turn.new(player_1.type, new_board)
    turn_1.go
    turn_1.stub(:gets).and_return("a")
    expect(turn_1.process_input("a")).to eq([". ", ". ", ". ", ". ", ". ", ". "])
  end

  it 'can count the number of empty cells in a column' do
    new_board = Board.new
    player_1 = Player.new(:human)
    turn_1 = Turn.new(player_1.type, new_board)
    turn_1.go
    turn_1.stub(:gets).and_return("a")
    turn_1.process_input("a")
    expect(turn_1.cells_empty).to eq(6)
  end

  it 'can tell if a column has any available spots' do
    new_board = Board.new
    player_1 = Player.new(:human)
    turn_1 = Turn.new(player_1.type, new_board)
    turn_1.go
    turn_1.stub(:gets).and_return("a")
    turn_1.process_input("a")
    expect(turn_1.playable?).to eq(true)

    new_board.add_x(5,0)
    new_board.add_x(4,0)
    new_board.add_x(3,0)
    new_board.add_x(2,0)
    new_board.add_x(1,0)
    new_board.add_x(0,0)
    turn_1.process_input("a")
    expect(turn_1.playable?).to eq(false)
  end

  it 'can tell where the lowest empty spot is in a column' do
    new_board = Board.new
    player_1 = Player.new(:human)
    turn_1 = Turn.new(player_1.type, new_board)
    turn_1.go
    turn_1.stub(:gets).and_return("a")
    turn_1.process_input("a")
    expect(turn_1.low_point).to eq(5)
  end
end
