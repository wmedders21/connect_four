require './lib/board'
require './lib/player'
require './lib/turn'

class Column
  attr_reader :column
  def initialize(location)
    @column = location
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

end


#notice: it's important to re-instantiate the
#column class instance after every X or O
#is added to the matrix in order to update the
#column arrays
# NOTES FOR COLUMN: Column has access to Player, so it can read turn_mode.  turn_mode_human will go first in the runner, require
