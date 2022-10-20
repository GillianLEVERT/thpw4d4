require_relative 'game'
require_relative 'board_case'
class Board
   attr_accessor :board
 
   def initialize
    
     @board = []
   
     9.times do |i|
     @board << Board_case.new("case#{i+1}").value
     end     
   end


   def  play_turn(player)
    puts "#{player.name} ! Quel est trop prochain moove ? Impressione nous ! "
    print ">>"
    case_number = gets.chomp.to_i
      if @board[(case_number-1)] == " "
        @board[(case_number-1)] = player.value
      else
        puts "LA CASE EST DEJA PRISE BB, CHOISI UNE AUTRE, EN VOUS REMERCIANT"
        play_turn(player)
      end
 
    end

   def display_board
     puts " "* 21
     puts " "* 21 +"█████████████████████████████████".green
     puts " "* 21 +"█".green+"a1       █".green + "█".green+"b1       █".green + "█".green+"c1       █".green
     puts " "* 21 +"█".green+"         █".green + "█".green+"         █".green + "█".green+"         █".green
     puts " "* 21 +"█".green+"    " +"#{@board[0]}"+"    ██".green+"    " +"#{@board[1]}"+"    ██".green+"    " +"#{@board[2]}"+"    █".green
     puts " "* 21 +"█".green+"         █".green + "█".green+"         █".green + "█".green+"         █".green
     puts " "* 21 +"█".green+"       "+"1".yellow+" █".green + "█".green+"       "+"2".yellow+" █".green + "█".green+"       "+"3".yellow+" █".green
     puts " "* 21 +"█████████████████████████████████".green
     puts " "* 21 +"█".green+"a2       █".green + "█".green+"b2       █".green + "█".green+"c2       █".green
     puts " "* 21 +"█".green+"         █".green + "█".green+"         █".green + "█".green+"         █".green
     puts " "* 21 +"█".green+"    " +"#{@board[3]}"+"    ██".green+"    " +"#{@board[4]}"+"    ██".green+"    " +"#{@board[5]}"+"    █".green
     puts " "* 21 +"█".green+"         █".green + "█".green+"         █".green + "█".green+"         █".green
     puts " "* 21 +"█".green+"       "+"4".yellow+" █".green + "█".green+"       "+"5".yellow+" █".green + "█".green+"       "+"6".yellow+" █".green
     puts " "* 21 +"█████████████████████████████████".green
     puts " "* 21 +"█".green+"a3       █".green + "█".green+"c2       █".green + "█".green+"c3       █".green
     puts " "* 21 +"█".green+"         █".green + "█".green+"         █".green + "█".green+"         █".green
     puts " "* 21 +"█".green+"    " +"#{@board[6]}"+"    ██".green+"    " +"#{@board[7]}"+"    ██".green+"    " +"#{@board[8]}"+"    █".green
     puts " "* 21 +"█".green+"         █".green + "█".green+"         █".green + "█".green+"         █".green
     puts " "* 21 +"█".green+"       "+"7".yellow+" █".green + "█".green+"       "+"8".yellow+" █".green + "█".green+"       "+"9".yellow+" █".green
     puts " "* 21 +"█████████████████████████████████".green
    
   end
   
   def victory?
    if @board[0] == @board[1] && @board[0] == @board[2] && @board[0] != " "  || @board[3] == @board[4] && @board[3] == @board[5] && @board[3] != " "  || @board[6] == @board[7] && @board[6] == @board[8] && @board[6] != " "  || @board[0] == @board[3] && @board[0] == @board[6] && @board[0] != " "  || @board[1] == @board[4] && @board[1] == @board[7] && @board[1] != " "  || @board[2] == @board[5] && @board[2] == @board[8] && @board[2] != " "  || @board[0] == @board[4] && @board[0] == @board[8] && @board[0] != " "  || @board[2] == @board[4] && @board[2] == @board[6] && @board[2] != " " 
      return true
    else
      return false
  end
end
end
