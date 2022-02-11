require 'pry'
require 'rspec'
require './lib/player'

RSpec.describe Player do
  it "exists" do
  player_1 = Player.new("human")
  player_2 = Player.new("robot")
  expect(player_1).to be_an_instance_of(Player)
  expect(player_2).to be_an_instance_of(Player)
  end

  it "can take user input" do
    player_1 = Player.new("human")
    #player_2 = Player.new("robot")
    #binding.pry
    #player_1.user_input("A")
    expect(player_1.user_input).to receive(:puts).with("phrase")

    #allow(player_2.user_input).to receive("A")
    #expect(player_2.user_input).to eq("A")

  end
end
