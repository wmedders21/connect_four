require 'rspec'
require 'pry'
require './lib/cell'
require './lib/board'

class Grid_array
  attr_reader :cells, :cell
  def initialize(cells)
    @cells = []
  end

  def add_cells(cell)
    @cells << cell
  end
end
