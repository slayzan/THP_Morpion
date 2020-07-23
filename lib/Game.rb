class Game
   attr_accessor :player1, :player2, :board

   def initialize(name1, name2)
      @player1 = Player.new(name1, "x")
      @Player2 = Player.new(name2, "o")
      @board = Board.new()
   end

   def show_board
      puts " 1   2   3 "
      puts "|   |   |   | a"
      puts "| #{board.boardcase[0].value} | #{board.boardcase[1].value} | #{board.boardcase[2].value} |"
      puts "|___|___|___|"
      puts "|   |   |   | b"
      puts "| #{board.boardcase[3].value} | #{board.boardcase[4].value} | #{board.boardcase[5].value} |"
      puts "|___|___|___|"
      puts "|   |   |   | c"
      puts "| #{board.boardcase[6].value} | #{board.boardcase[7].value} | #{board.boardcase[8].value} |"
      puts "|   |   |   |"
   end

   def show_board_start
      puts " 1   2   3 "
      puts "|   |   |   | a"
      puts "|   |   |   |"
      puts "|___|___|___|"
      puts "|   |   |   | b"
      puts "|   |   |   |"
      puts "|___|___|___|"
      puts "|   |   |   | c"
      puts "|   |   |   |"
      puts "|   |   |   |"
   end

   def is_still_going?
      return board.check_win
      true
   end
end