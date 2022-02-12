require 'pry'
require 'rspec'
require './lib/player'

RSpec.describe Player do
  it "exists" do
    player = Player.new("human")
    expect(player).to be_an_instance_of(Player)
  end

  it "has a type" do
    player = Player.new("human")
    expect(player.type).to eq("human")
  end

  it "can pass the right turn mode to the column" do
    player = Player.new("human")
#binding.pry
    expect(player.turn_mode).to eq("human")

  end
end
