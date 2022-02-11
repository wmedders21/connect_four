
class Player
  attr_reader :type, :name, :column_choice
  def initialize(type, name)
    @type = type
    @name = name
    @column_choice
  end

  def pick_column
    if @type == :human
      puts "Please Pick a Column A B C D E F G"
      @column_choice = gets.chomp.upcase
      #if the input != A - G then kick back

    else
      puts "Now it's the Computer's turn. Press 'Return'"
      gets.chomp
      @column_choice = ["a", "b", "c", "d", "e", "f", "g"].sample
    end
  end
end
