class Question
  def initialize
    @number_1 = rand(10)
    @number_2 = rand(10)
    @sum =  @number_1 +  @number_2
  end

  def ask(player)
    print "#{player.name}: What is #{@number_1} plus #{@number_2}?"
    print "> "
    player_input = STDIN.gets.chomp().to_i
    if player_input == @sum
      puts "Good job #{player.name}!" 
   else
      puts "Focus #{player.name}!"
      player.lives -= 1
   end
  end
end
