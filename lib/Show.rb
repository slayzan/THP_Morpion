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
      play_again = true
         while still_going
            p1_has_played = false
            while !p1_has_played
               getbreak = true
               puts "le joueur 1 choisie une case"
               p1_has_played = game.board.fillCase(gets.chomp)
               game.show_board
               if game.board.turncount >= 3
                  getbreak = game.is_still_going?
               end
            end
            if !getbreak
               puts "bravo #{nom1} a gagné !"
               break
            end
            p2_has_played = false
            while !p2_has_played
               getbreak = true
               puts "le joueur 2 choisie une case"
               p2_has_played = game.board.fillCase(gets.chomp)
               game.show_board
               if game.board.turncount >= 3
                  getbreak = game.is_still_going?
               end
            end
            if !getbreak
               puts "bravo #{nom2} a gagné !"
               break
            end
         end
      end
end