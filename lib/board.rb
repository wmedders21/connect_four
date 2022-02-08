require 'pry'
require 'rspec'
class Board
#  attr_reader :columns, :rows
 def initialize
 end
#puts "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n.......\n......."
  def start
    board =   ("ABCDEFG\n.......\n.......\n.......\n.......\n.......\n.......\n.......").split
    puts board
  end
end
