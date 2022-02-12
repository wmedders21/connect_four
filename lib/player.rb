require 'pry'
#other requires go here

class Player
  attr_reader :type, :turn_mode
  def initialize(type)
    @type = type
    @turn_mode = type
  end

  #I had more shit here to start, but most of it became redundant because I think we could handle what the player needs to do with just an attr_reader. Really just telling Turn what kind of turn it is. We can pass Turn the player.turn_mode value (right now it's a string, "human") and Turn can take it from there.
end
