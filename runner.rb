# require './lib/player'
require './lib/game'
puts "Welcome to Connect Four!\n Type 'GO' to start the game.\n**************************"
response = gets.chomp

if response.upcase == "GO"
  new_game = Game.new
  new_game.start
else puts "That's not how you start the game!"
end
