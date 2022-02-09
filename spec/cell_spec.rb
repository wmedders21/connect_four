require 'rspec'
require 'pry'
require './lib/cell'

RSpec.describe Cell do
  it "exists" do
    cell1 = Cell.new(0, ".")
    expect(cell1).to be_an_instance_of(Cell)
  end

  it "has a valid location" do
    cell1 = Cell.new(0, ".")
    expect(cell1.location).to eq(0)
  end

  it "has a value" do
    cell1 = Cell.new(0, ".")
    expect(cell1.value).to eq(".")
  end
end
