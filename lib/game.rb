require 'rspec'
require 'pry'
require './lib/board'
require './lib/column'
require './lib/player'
require './lib/turn'


class Game

  def initialize(player_name, computer_name)
    @player_name = player_name
    @computer_name = computer_name
    @board = Board.new
    # @column = Column.new
    @user = Player.new(:human)
    @bot = Player.new(:robotron)
    @user_turn = Turn.new(user.type)
    @bot_turn = Turn.new()
  end

def start
end







end
