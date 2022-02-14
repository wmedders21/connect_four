require 'rspec'
require './lib/board'
require 'pry'

class Column
  attr_reader :column, :players_choice, :board
  def initialize(players_choice)
    @board = Board.new
    @choice = {
    "a" => @board.matrix.transpose[0],
    "b" => @board.matrix.transpose[1],
    "c" => @board.matrix.transpose[2],
    "d" => @board.matrix.transpose[3],
    "e" => @board.matrix.transpose[4],
    "f" => @board.matrix.transpose[5],
    "g" => @board.matrix.transpose[6]
  }
    @column = @choice[players_choice]
  end

  def update
    @board
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
  binding.pry

end


#notice: it's important to re-instantiate the
#column class instance after every X or O
#is added to the matrix in order to update the
#column arrays
# NOTES FOR COLUMN: Column has access to Player, so it can read turn_mode.  turn_mode_human will go first in the runner, require
