require 'pry'
require 'rspec'
# require './lib/grid_map'

class Board
  attr_reader :matrix, :header#, :columns
  def initialize
#header is just the letters above the matrix. No functionality
    @header = ["A ","B ","C ","D ","E ","F ","G "]
#matrix is our 2d array
    @matrix = [
      [". ",". ",". ",". ",". ",". ",". "],
      [". ",". ",". ",". ",". ",". ",". "],
      [". ",". ",". ",". ",". ",". ",". "],
      [". ",". ",". ",". ",". ",". ",". "],
      [". ",". ",". ",". ",". ",". ",". "],
      [". ",". ",". ",". ",". ",". ",". "]
    ]
#columns allows us access to the y axis in array form
    # @columns = @matrix.transpose
  end
#render prints the header and matrix during gameplay
  def render
    puts @header.join
    @matrix.each do |row|
      puts row.join
    end
  end
#add_x takes coordinate arguments and places an X on the board
  def add_x(row, column)
    @matrix[row][column] = "X "
  end
  #add_o takes coordinate arguments and places an O on the board
  def add_o(row, column)
    @matrix[row][column] = "O "
  end
#snapshot creates a savestate of the matrix after moves have been played
#Useful for making the spots_empty method work properly
  # def snapshot
  #   return @matrix.transpose
  # end
#spots_empty() counts the number of available spaces in a particular column
  # def cells_empty(column_location)
  #   snapshot
  #   @columns[column_location].count do |empty_cell|
  #     empty_cell == ". "
  #   end
  # end
end
# could add another method move_valid?
# if spots_empty.count >= 1
# return true
#
# and another method for placing the piece:
# def place_piece
# if player_type = "human" && move_valid == true
#  add_x
# else
# add_o
