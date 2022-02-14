require 'pry'
require './player'
require './column'
#other requires go here

class Turn
  attr_reader :player_type, :column_choice, :counter
  def initialize(player_type)
      @player_type = player_type
      @column_choice = column_choice
      @counter = 0
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

  def go
    @counter += 1
    if @player_type == :human
      puts "Please select a column:"
        column_choice = gets.chomp
      else
        @counter += 1
        puts "It's the robot's turn!"
        column_choice = (["a ","b ","c ","d ","e ","f ","g "]).sample
      end
    end


    def valid_input?
      a = ["a", "b", "c", "d", "e", "f", "g"]
      a.include?(go)
    end

    # def return_to_user_input
    #   if valid_input? == false
    #     user_turn
    #   end
    # end

end

#Can we combine the user_turn and the bot_turn into one method where we just run a conditional to tell what is the @player_type and take it from there? I have both methods in here just in case we need to pass something that I'm overlooking to the Column. But I think this combined way will work.
