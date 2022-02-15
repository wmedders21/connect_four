require 'rspec'
require 'pry'
require './lib/board'
# require './lib/column'
require './lib/player'
require './lib/turn'


class Game

  def initialize#(player_name, computer_name)
    #@player_name = player_name
    #@computer_name = computer_name
    @board = Board.new
    # @column = Column.new
    @user = Player.new(:human)
    @bot = Player.new(:robotron)
    @user_turn = Turn.new(@user.type, @board)
    @bot_turn = Turn.new(@bot.type, @board)
  end

def start
  @board.render
  until @board.win_scan == true || @board.draw? == true
    @user_turn.go
    # @user_turn.valid_input?
    @user_turn.process_input(@user_turn.column_choice)
    @user_turn.cells_empty
    # @user_turn.playable?
    # binding.pry
    @board.add_x(@user_turn.low_point,@user_turn.column_address[@user_turn.column_choice])
    @board.render
    @board.win_scan
    if @board.win_scan == true
      break
    end
    @board.draw?
    @bot_turn.go
    @bot_turn.process_input(@bot_turn.column_choice)
    # @bot_turn.playable?
    @board.add_o(@bot_turn.low_point,@bot_turn.column_address[@bot_turn.column_choice])
    @board.render
    @board.win_scan
    @board.draw?
  end

end







end
