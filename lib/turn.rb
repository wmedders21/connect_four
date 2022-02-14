require 'pry'
require './lib/player'
require './lib/column'
require './lib/board'
#other requires go here

class Turn
  attr_reader :player_type, :column_choice, :board
  def initialize(player_type, board)
      @player_type = player_type
      @column_choice = ""
      @column = []
      @board = board


  end

  def go
    if @player_type == :human
      puts "Please select a column:"
        @column_choice = gets.chomp
      else
        puts "It's the robot's turn!"
        @column_choice = (["a ","b ","c ","d ","e ","f ","g "]).sample
      end
    end


    def valid_input?
      a = ["a", "b", "c", "d", "e", "f", "g"]
      a.include?(go)
    end

    # binding.pry
    def process_input(column_choice)
      columns = {
        "a" => @board.matrix.transpose[0],
        "b" => @board.matrix.transpose[1],
        "c" => @board.matrix.transpose[2],
        "d" => @board.matrix.transpose[3],
        "e" => @board.matrix.transpose[4],
        "f" => @board.matrix.transpose[5],
        "g" => @board.matrix.transpose[6]
      }
      @column = columns[column_choice]
    end

    def cells_empty
      @column.count do |empty_cell|
        empty_cell == ". "
      end
    end

    def playable?
      count = self.cells_empty
      if count != 0
        true
      else
        false
      end
    end

    def low_point
      bottom = self.cells_empty - 1
    end





end
