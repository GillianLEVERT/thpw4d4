require_relative 'board'
require_relative 'player'

class Game
  attr_accessor :board, :player1, :player2

      def initialize
        @players = []
          puts " "
          puts "BIENVENUE DANS LE JEU DE MORPION VERSION 1379 DE CHEZ THP".bold.yellow
          puts "JE SUIS SAPU39 VOTRE HUMBLE SERVITEUR, JE M'ASSURE QU'IL N'Y A PAS DE TRICHE".bold.yellow
          puts "PAS DE VOL, DE HACK, DE SALTO ARRIERE, DE MACDO SANS FRITE, DE JACQUIE SANS MICHEL".bold.yellow
          puts "ENTRE AUTRES...".bold.yellow
          puts " "
          sleep 0.5
          puts "   Joueur 1, Quel est ton pseudo ?"
          print ">>"
            
        player_name = gets.chomp #on rentre son pseudo ici
        @player1 = Player.new(player_name, "X")
        @players << @player1
        @player1.value = "X".bold.red
        @current_player = @player1

          #partie un peu troll
          puts "Ton pseudo est donc bien #~{[~{#}]}~Erreur dans la{{#[MATRICE]^$^ù)"
          sleep 1
          puts "." *5
          puts "PETIT KIKI ?".bold.red
          sleep 1 
          print "." *3
          puts "plutôt étrange mais nous validons votre demande."
          sleep 1
          print "votre couleur de référence sera le " + "ROUGE ".bold.red
          print "et votre symbole sera le " + "X".bold.red
          puts " "
          sleep 1.5
          puts " "
          puts "Joueur 2, Quel est ton pseudo ?"
          print ">>"

        player_name = gets.chomp #on rentre son pseudo ici
        @player2 = Player.new(player_name, "O")
        @players << @player2
        @player2.value = "O".bold.blue
        #partie un peu troll
          puts " "
          puts "Welcome joueur 2 ! ton pseudo est donc bien #~{[~{#}]}~Erreur dans la{{#[DYLAN ALED, YANN {#VEUT{&é3} MON C**]^$^ù)"
          sleep 1
          puts "." *5
          puts "BlackNight18_ASV_PLZ ?".bold.blue
          puts "." *5
          sleep 1
          puts "Tu as 12ans j'imagine... mais nous validons votre demande." "\n\n"
          sleep 1
          print "votre couleur de référence sera le " + "BLEU ".bold.blue
          print "comme ton cartable et votre symbole sera le " + "O ".bold.blue  
          print "comme ta note en math..""\n\n"
          
          sleep 1
          puts "press enter for next étape du jeu"
          gets.chomp
          system 'clear'"\n\n"
          
          puts " A MA GAUCHE, EN ROUGE, NOUS AVONS DONC PETIT KIKI, PRET AU COMBAT !" "\n\n"
          
          sleep 1
          puts " A MA DROITE, AVEC SON CARTABLE BLEU, NOUS AVONS DONC BlackNight18_ASV_PLZ, PRET A PARIER SON GOUTER QU'IL VA GAGNER" "\n\n"
          sleep 1
          puts " "* 5 + " {... CLIC ERREUR 404 == TEXT FONT SIZE 24 #[|@@8&'-'@ #COLORDARKBLUEDRACULAXYZ.CSS.HTML - VIVE BOOTSTRAP]"  "\n\n"
          sleep 1
          
          sleep 3
          puts "Le jeu commence dans 3.."
          sleep 1
          puts "2"
          sleep 1
          puts "1"
          sleep 1
          puts "0.5"
          sleep 1
          puts "0.25"
          sleep 3
          puts "0.01"
          sleep 1
          puts " "
          puts " "*21 + "LE SERVEUR DOIT REDEMARRER"
          puts " "*17 + "RESET EN COURS, VEUILLEZ PATIENTEZ"
          puts " "*12 + "NE QUITTEZ PAS, NOUS ALLONS PRENDRE VOTRE APPEL"
          sleep 2
          puts " "
          puts " "*17 + "RESET REUSSI, MERCI D'AVOIR ATTENDU"
          puts " "*15 + "..vous aviez pas le choix de toute façon.."
          sleep 1
          puts " "
          puts " "*15 + "press Enter for next étape du jeu"
          gets.chomp
          system 'clear'
          #fin de la partie troll
          puts "Bienvenue " + player1.name + " et " + player2.name + " ! "
          sleep 1
          puts player1.name + " jouera avec les " + player1.value + " et " + player2.name + " jouera avec les " + player2.value + "."
          sleep 1
            
        @board = Board.new
            
        end
    
        def switch_player
            if @current_player == @player1
               @current_player = @player2
            else
              @current_player = @player1
            end
          end
        
        def turn
                              
            9.times do 
            system 'clear'
            puts @board.display_board
              if @board.victory? == false
               puts @board.play_turn(@current_player)
               @board.display_board 
               switch_player
            else
              break
            end
        end            
            if @board.victory? == true
                switch_player
                puts "VICTOIRE DE #{@current_player.name} !"
                @current_player.score += 1
                    else
                    puts "EGALITE"
                end
            end
            
            

        def again?
          puts "Voulez-vous refaire une partie? "
          puts "(y/n) tapez 'y' pour yes / tapez 'n' pour no"
          answer = gets.chomp.downcase
          puts "\n"
            if answer == "oui"
             return true
                
            elsif answer == "n"
              return false
            else
               self.again?
            end
        end

        def result
          puts "Résulat de la partie"
          puts "#{player1.name} à gagné #{player1.score} partie(s)"
          puts "#{player2.name} à gagné #{player2.score} partie(s)"
            if player1.score > player2.score
              puts "Bravo #{player1.name} tu es le grand gagnant de cette partie"
            elsif player2.score > player1.score
              puts "Bravo #{player2.name} tu es le grand gagnant de cette partie"
            else 
              puts "Vous avez terminé à égalité, vous êtes nul."
            end
          end
    end
