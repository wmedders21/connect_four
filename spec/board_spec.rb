require 'rspec'
require 'pry'
require './lib/board'

RSpec.describe Board do
  new_game = board.new
  it "creates a board class" do
    expect(new_game).to be_an_instance_of(Board)
  end
end
