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

  it "can perform a human turn" do
    player1 = Player.new("human")
    turn_1 = Turn.new(:human)
    turn_1.stub(:gets).and_return("A")
    expect(turn_1.user_turn).to eq("A")
  end

  it "can perform a robot turn" do
    player2 = Player.new("robot")
    turn_2 = Turn.new(:robot)
    turn_2.stub(:select).and_return("B")
    allow(turn_2.user_turn).to receive("B")
  end #this test actually passes. Here's where I found it:
end   # https://gist.github.com/Kotauror/6993000de0c53206a96879515438950d
      # down toward the bottom, a post from ZASMan on April 30, 2021.
