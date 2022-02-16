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
end
