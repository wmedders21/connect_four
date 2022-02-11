require 'pry'
require './column'
require './board'

class Player
  attr_reader :type, :user_input, :robot_input
  def initialize(type)
    @type = type
    @user_input = user_input
    @robot_input = robot_input
  end

  def user_input
    if type == "human"
      puts "Your move, human:\n>"
      user_input = gets.chomp.upcase
      move_valid?(user_input)
    end
  end

  def move_valid?
    if column.spots_empty.count >=1
      board.add_x(***, user_input)
    else puts "This is an invalid move. Please select a column with open spots."
      user_input
    end
    #need logic for the row to be filled starting
    #at the bottom and working up.
  end

  def robot_input
      puts "It's the robot's turn:\n>"
      robot_input = ["A", "B", "C", "D", "E", "F", "G"].sample
      board.add_o(***, robot_input)
  end
  #need logic for the row to be filled starting
  #at the bottom and working up.
end
