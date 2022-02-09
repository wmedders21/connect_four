require 'rspec'
require 'pry'
require './lib/cell'
require './lib/board'
require './lib/grid_array'

RSpec.describe Grid_array do
  it "exists" do
    grid_array1 = Grid_array.new([])
    expect(grid_array1).to be_an_instance_of(Grid_array)
  end

  it "can add cells" do
    grid_array1 = Grid_array.new([])
    cell1 = Cell.new(0, ".")
    grid_array1.add_cells(cell1)
    expect(grid_array1.cells).to eq([cell1])
  end
end
