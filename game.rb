require_relative './player' 
require_relative './question'

class Math_game

  def initialize
    @player_1 = Player.new ("Player 1")
    @player_2 = Player.new ("Player 2")
    @players = [@player_1, @player_2]
  end
 

  def game_over?
    if @player_1.lives == 0
      puts "#{@player_2.name} wins"
      puts "----- GAME OVER -----"
      return true
    elsif @player_2.lives == 0
      puts "#{@player_1.name} wins"
      puts "----- GAME OVER -----"
      return true
    end
    return false
  end

  def play
    while (!game_over?) do  
      question = Question.new 
      question.ask (@players.first)
      puts "P1: #{@player_1.lives}/3 P2: #{@player_2.lives}/3" 
      puts "--- NEW TURN ---"
      @players.rotate!
   end
  end
end



