require 'rspec'
require 'pry'
require './lib/board'
require './lib/column'
require './lib/player'
require './lib/turn'


class Game
    attr_reader :player_1, :player_2, :board, :user_turn, :bot_turn

  def initialize
    @player_1 = Player.new(:human)
    @player_2 = Player.new(:robot)
    @board = Board.new
    @user_turn = Turn.new(player_1.type, @board)
    @bot_turn = Turn.new(player_2.type, @board)
  end

  def start_menu
    puts "WELCOME TO CONNECT FOUR! \n Please press p to play. Or, enter q to quit."
    start_menu_input = gets.chomp.upcase.strip

      until start_menu_input.include?("P") == true || start_menu_input.include?("Q") == true
        puts "Please try again."
      start_menu_input = gets.chomp.upcase.strip
      end
      start_menu_options(start_menu_input)
  end

  def start_menu_options(start_menu_input)
    case start_menu_input
    when "P"
      start
    when "Q"
      exit!
    end
  end

  def start
    @board.render
    until @board.win_scan == true || @board.draw? == true
      @user_turn.go
      if @user_turn.valid_input? == false
        puts "Please make a valid selection A - G"
        until @user_turn.valid_input? == true
          @user_turn.go
        end
      end
      @user_turn.process_input(@user_turn.column_choice)
      @user_turn.cells_empty
      # binding.pry
      if @user_turn.playable? == false
        puts "That column is full, make another selection"
        until @user_turn.playable? == true
          @user_turn.go
          if @user_turn.valid_input? == false
            puts "Please make a valid selection A - G"
            until @user_turn.valid_input? == true
              @user_turn.go
            end
          end
          @user_turn.process_input(@user_turn.column_choice)
        end
      end
      @board.add_x(@user_turn.low_point,@user_turn.column_address[@user_turn.column_choice])
      @board.render
      @board.win_scan
      if @board.win_scan == true
        break
      end
      @board.draw?
      @bot_turn.go
      @bot_turn.process_input(@bot_turn.column_choice)
      if @bot_turn.playable? == false
        puts "Computer selected a full column, stand by for retry."
        until @bot_turn.playable? == true
          @bot_turn.go
          @bot_turn.process_input(@bot_turn.column_choice)
        end
      end
      @board.add_o(@bot_turn.low_point,@bot_turn.column_address[@bot_turn.column_choice])
      @board.render
      @board.win_scan
      @board.draw?
    end
    game_2 = Game.new
    game_2.start_menu
  end
end
