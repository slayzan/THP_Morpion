class Application
   
   def perform
      puts "Bienvenue sur le jeu du morpion\n"
      puts "Veuillez indiquer le  nom du premier joueur\n"
      nom1 = gets.chomp
      puts "Veuillez indiquer le  nom du deuxieme joueur\n"
      nom2 = gets.chomp
      game = Game.new(nom1,nom2)
      puts "bien la partie vas commencer"
      game.show_board_start
      still_going = true
      while still_going
         puts "le joueur 1 choisie une case"
         game.board.fillCase(gets.chomp)
         game.show_board
         if game.board.turncount >= 3
           break if !game.is_still_going?
         end
         puts "le joueur 2 choisie une case"
         game.board.fillCase(gets.chomp)
         game.show_board
         if game.board.turncount >= 3
            break if !game.is_still_going?
          end     
      end
   end
end