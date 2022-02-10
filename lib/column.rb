require './lib/board'

class Column
  attr_reader :column, :cells_empty
  def initialize(location, cells_empty)
    @column = location
    @cells_empty = cells_empty
  end


  def playable?
    self
    if @cells_empty != 0
      true
    else
      false
    end
  end

end
