

class Board
  attr_reader :matrix, :header
   def initialize
    @header = ["A ","B ","C ","D ","E ","F ","G "]
    @matrix = [
      [". ",". ",". ",". ",". ",". ",". "],
      [". ",". ",". ",". ",". ",". ",". "],
      [". ",". ",". ",". ",". ",". ",". "],
      [". ",". ",". ",". ",". ",". ",". "],
      [". ",". ",". ",". ",". ",". ",". "],
      [". ",". ",". ",". ",". ",". ",". "]
    ]
  end

  def render
    puts @header.join
    @matrix.each do |row|
      puts row.join
    end
  end

  def add_x(row, column)
    @matrix[row][column] = "X "
  end

  def add_o(row, column)
    @matrix[row][column] = "O "
  end

  def win_scan
    m = @matrix
    d1 = [m[3][0], m[2][1], m[1][2], m[0][3]]
    d2 = [m[4][0], m[3][1], m[2][2], m[1][3], m[0][4]]
    d3 = [m[5][0], m[4][1], m[3][2], m[2][3], m[1][4], m[0][5]]
    d4 = [m[5][1], m[4][2], m[3][3], m[2][4], m[1][5], m[0][6]]
    d5 = [m[5][2], m[4][3], m[3][4], m[2][5], m[1][6]]
    d6 = [m[5][3], m[4][4], m[3][5], m[2][6]]
    d7 = [m[2][0], m[3][1], m[4][2], m[5][3]]
    d8 = [m[1][0], m[2][1], m[3][2], m[4][3], m[5][4]]
    d9 = [m[0][0], m[1][1], m[2][2], m[3][3], m[4][4], m[5][5]]
    d10 = [m[0][1], m[1][2], m[2][3], m[3][4], m[4][5], m[5][6]]
    d11 = [m[0][2], m[1][3], m[2][4], m[3][5], m[4][6]]
    d12 = [m[0][3], m[1][4], m[2][5], m[3][6]]
    diagonals = [d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12]
    if
      diagonals.find do |diagonal|
        diagonal.join.include?("X X X X ")
      end
      puts "Player 1 Wins!!"
      return true
    elsif
      @matrix.find do |row|
        row.join.include?("X X X X ")
      end
      puts "Player 1 Wins!!"
      return true
    elsif
      @matrix.transpose.find do |column|
        column.join.include?("X X X X ")
      end
      puts "Player 1 Wins!!"
      return true
    else
    end

    if
      diagonals.find do |diagonal|
        diagonal.join.include?("O O O O ")
      end
      puts "Player 2 Wins!!"
      return true
    elsif
      @matrix.find do |row|
        row.join.include?("O O O O ")
      end
      puts "Player 2 Wins!!"
      return true
    elsif
      @matrix.transpose.find do |column|
        column.join.include?("O O O O ")
      end
      puts "Player 2 Wins!!"
      return true
    end
  end

  def draw?
    dots = []
    @matrix.find_all do |row|
      dots << row.include?(". ")
    end
    if dots == [false, false, false, false, false, false]
      puts "The game is a Draw!"
      return true
    else
      return false
    end
  end
end
