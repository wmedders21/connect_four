require 'rspec'
require 'pry'

class Cell
  attr_reader :location, :value
  def initialize(location, value)
    @location = location
    @value = value
  end
end
