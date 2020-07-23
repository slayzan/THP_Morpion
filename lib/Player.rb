class Player
   attr_accessor :turn, :name

   def initialize(name, symbole)
      @name = name
      @symbole = symbole
      @turn = 0
   end
end