require 'pry'
require './player'
#other requires go here

class Turn
  attr_reader :player_type, :column_choice
  def initialize(player_type)
      @player_type = player_type
      @column_choice = column_choice
  end

  # def user_turn
  #   if  @player_type == :human
  #     puts "Please select a column:"
  #     column_choice = gets.chomp
  #   else
  #     nil
  # end #this can be passed to the column class to run .playable?
  #
  # def bot_turn
  #   @player_type == :robot
  #   puts "It's the robot's turn!"
  #   column_choice = (["A ","B ","C ","D ","E ","F ","G "]).sample
  # end #this can be passed to the column class to run .playable?

  def user_turn
    if @player_type == :human
      puts "Please select a column:"
        column_choice = gets.chomp
      else
        puts "It's the robot's turn!"
        column_choice = (["A ","B ","C ","D ","E ","F ","G "]).sample
      end
    end

end

#Can we combine the user_turn and the bot_turn into one method where we just run a conditional to tell what is the @player_type and take it from there? I have both methods in here just in case we need to pass something that I'm overlooking to the Column. But I think this combined way will work.
