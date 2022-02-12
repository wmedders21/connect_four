require './lib/player'
require './lib/board'
require './lib/game'
require './lib/board'
require './lib/turn'
require './lib/column'
puts "Welcome to Connect Four!\n Type 'GO' to start the game.\n**************************"
response = gets.chomp
input_count = 0
until response.upcase == "GO" || input_count == 3
  input_count += 1
  puts "Try again! Please type 'GO' -- Even 'go' is fine."
  response = gets.chomp
end

board = Board.new
user = Player.new(:human, "Bobby")
bot = Player.new(:robotboy, "Zarvox")
@board = board
def render
  @board.render
  a = Column.new(@board.matrix.transpose[0])
  b = Column.new(@board.matrix.transpose[1])
  c = Column.new(@board.matrix.transpose[2])
  d = Column.new(@board.matrix.transpose[3])
  e = Column.new(@board.matrix.transpose[4])
  f = Column.new(@board.matrix.transpose[5])
  g = Column.new(@board.matrix.transpose[6])
end
#1.make sure that we can't play on a full column or
#2.translate what user enters to a value (x,y)
#then use that return value to set argument for the method below
render
user.pick_column
board.add_x(5,0)
render
bot.pick_column
board.add_o(4,0)
render
user.pick_column
board.add_x(5,1)
render
bot.pick_column
board.add_o(4,1)
render
user.pick_column
board.add_x(5,2)
render
bot.pick_column
board.add_o(4,2)
render
user.pick_column
board.add_x(5,3)
render
bot.pick_column
board.add_o(4,3)
board.win_scan
render
user.pick_column
board.add_x(5,4)
board.win_scan
render
bot.pick_column
board.add_o(4,4)
board.win_scan
render
user.pick_column
board.add_x(5,5)
board.win_scan
render
bot.pick_column
board.add_o(4,5)
board.win_scan
render
user.pick_column
board.add_x(5,6)
board.win_scan
render
bot.pick_column
board.add_o(4,6)
board.win_scan
render
