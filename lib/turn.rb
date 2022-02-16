class Turn
  attr_reader :player_type, :column_choice, :board, :column_address, :column
  def initialize(player_type, board)
      @player_type = player_type
      @column_choice = ""
      @column = []
      @board = board
      @column_address = {"a" => 0, "b" => 1, "c" => 2, "d" => 3, "e" => 4, "f" => 5, "g" => 6}
  end

  def go
    if @player_type == :human
      puts "Please select a column:"
      @column_choice = gets.chomp
    else
      sleep(1)
      puts "It's Player 2's turn!"
      sleep(1)
      @column_choice = (["a","b","c","d","e","f","g"]).sample
    end
  end

    def valid_input?
      ["a","b","c","d","e","f","g"].include?(@column_choice)
    end

    def process_input(column_choice)
      columns = {
        "a" => @board.matrix.transpose[0],
        "b" => @board.matrix.transpose[1],
        "c" => @board.matrix.transpose[2],
        "d" => @board.matrix.transpose[3],
        "e" => @board.matrix.transpose[4],
        "f" => @board.matrix.transpose[5],
        "g" => @board.matrix.transpose[6]
      }
      @column = columns[column_choice]
    end

    def cells_empty
      @column.count do |empty_cell|
        empty_cell == ". "
      end
    end

    def playable?
      count = self.cells_empty
      if count != 0
        true
      else
        false
      end
    end

    def low_point
      bottom = self.cells_empty - 1
    end
end
