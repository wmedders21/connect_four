require 'pry'
require 'rspec'
class Board
 attr_reader :board, :column
 def initialize
   @column
   @board
 end
  def start
    @column = ["A","B","C","D","E","F","G"]
    @board = [
      [".",".",".",".",".",".","."],
      [".",".",".",".",".",".","."],
      [".",".",".",".",".",".","."],
      [".",".",".",".",".",".","."],
      [".",".",".",".",".",".","."],
      [".",".",".",".",".",".","."]
    ]
    puts @column.join
     @board.each do |row|
       puts row.join
     end
  end
end
