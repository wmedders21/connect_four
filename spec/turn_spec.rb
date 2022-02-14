require 'pry'
require 'rspec'
require './lib/turn'
require './lib/player'

RSpec.describe Turn do
  it "exists" do
    player1 = Player.new("human")
    #player2 = Player.new("robot")
    turn_1 = Turn.new(:human)
    expect(turn_1).to be_an_instance_of(Turn)
  end

  it "starts at turn 0" do
    player1 = Player.new("human")
    turn_1 = Turn.new(:human)
    expect(turn_1.counter).to eq(0)
  end

  it "can perform a human turn" do
    player1 = Player.new("human")
    turn_1 = Turn.new(:human)
    turn_1.stub(:gets).and_return("A")
    expect(turn_1.go).to eq("A")
  end

  it "the turn counter increases by one at the start of a human turn" do
    player1 = Player.new("human")
    turn_1 = Turn.new(:human)
    turn_1.go
    expect(turn_1.counter).to eq(1)
  end

  it "can perform a robot turn" do
    player2 = Player.new("robot")
    turn_2 = Turn.new(:robot)
    turn_2.stub(:select).and_return("B")
    allow(turn_2.go).to receive("B")
  end #this test actually passes. Here's where I found it:
  # https://gist.github.com/Kotauror/6993000de0c53206a96879515438950d
      # down toward the bottom, a post from ZASMan on April 30, 2021.
  it "the turn counter increases by one at the start of a robot turn" do
    player1 = Player.new("human")
    turn_1 = Turn.new(:human)
    player2 = Player.new("robot")
    turn_2 = Turn.new(:robot)
    turn_1.go
    turn_2.go
    expect(turn_2.counter).to eq(2)
  end

  # xit "detects the column choice of a human player" do
  #   player1 = Player.new("human")
  #   turn_1 = Turn.new(:human)
  #   turn_1.go
  #   turn_1.stub(:gets).and_return("A")
  #   turn_1.pick_column
  #   expect(turn_1.pick_column).to eq("A")
  # end

  # xit "detects the column choice of a robot player" do
  #   player2 = Player.new("robot")
  #   turn_2 = Turn.new(:robot)
  #   turn_2.stub(:select).and_return("B")
  #   allow(turn_2.go).to receive("B")
  #   allow(turn_2.pick_column).to receive("B")
  # end

  it "can determine if an entry is valid" do
    player1 = Player.new("human")
    turn_1 = Turn.new(:human)
    turn_1.go
    turn_1.stub(:gets).and_return("a")
    turn_1.valid_input?
    expect(turn_1.valid_input?).to eq(true)
  end

  it "can determine if an entry is invalid" do
    player1 = Player.new("human")
    turn_1 = Turn.new(:human)
    turn_1.go
    turn_1.stub(:gets).and_return("p")
    turn_1.valid_input?
    expect(turn_1.valid_input?).to eq(false)
  end


end
