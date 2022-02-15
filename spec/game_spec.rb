require 'rspec'
require 'pry'
require_relative './lib/board'
require_relative './lib/player'
require_relative './lib/turn'
require_relative './lib/game'

RSpec.describe Game do
  it "exists" do

    game_1 = Game.new
    expect(game_1).to be_an_instance_of(Game)
  end

  it "has access to the Board class" do

    game_1 = Game.new
    expect(game_1.board).to be_an_instance_of(Board)
  end

  it "can print a welcome message and ask for input" do

    game_1 = Game.new
     game_1.stub(:gets).and_return("P")
     expect(game_1.start_menu).to eq("P")
  end





  # xit "can take input and either start a game or quit" do
  #   game_1 = Game.new
  #   game_1.user_turn.stub(:gets).and_return("A")
  #   expect(game_1.start_menu_options("P")).to eq("A")
  # end
end
