require 'rspec'
require 'pry'
require './lib/board'
require './lib/player'
require './lib/turn'
require './lib/game'

RSpec.describe Game do
  it "exists" do

    game_1 = Game.new
    expect(game_1).to be_an_instance_of(Game)
  end

  it "has access to the Board class" do

    game_1 = Game.new
    expect(game_1.board).to be_an_instance_of(Board)
  end
end
