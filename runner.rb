require './lib/game'
require 'pry'
# puts "Welcome to Connect Four!\n Type 'GO' to start the game.\n**************************"
# response = gets.chomp
#
# if response.upcase == "GO"
#   new_game = Game.new
#   new_game.start
# else puts "That's not how you start the game!"
# end
game_1 = Game.new
game_1.start_menu
game_1.start_menu_options
