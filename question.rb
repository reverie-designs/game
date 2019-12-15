class Question
  attr_reader :first_number, :second_number
  def initialize 
    @first_number = rand(1..20)
    @second_number = rand(1..20)
  end

  def print_question(current_player)
    puts "#{current_player.name}: What is: #{first_number} + #{second_number}?"
    print "> "
    answer = $stdin.gets.chomp.to_i
    return answer
  end

  def check_answer(player_answer)
    actual_result = first_number + second_number
    return actual_result === player_answer
  end
end









# def start
#   puts "Welcome to our awesome Math game"
#   puts "Player 1 please enter your name: "
#   print "> "
#   player_one = Player.new($stdin.gets.chomp)
#   player_one.welcome_player

#   puts "Player 2 please enter your name: "
#   print "> "
#   player_two = Player.new($stdin.gets.chomp)
#   player_two.welcome_player

#   new_game = Game.new("#{player_one} vs #{player_two}")
#   # play_game(player_one, player_two, new_game)
#   puts "#{player_one.name} you have #{player_one.lives}/3 lives remaining and #{player_two.name} you have #{player_two.lives}/3 lives remaining"
#   puts "#{player_one.name} please input random number between 0 and 20"
#   print "> "
#   first_number = ($stdin.gets.chomp).to_i
#   puts "#{player_one.name} please input another random number between 0 and 20"
#   print "> "
#   second_number = ($stdin.gets.chomp).to_i

#   puts "#{player_two.name} what is #{first_number} + #{second_number}?"
#   print "#{player_two.name}: "
#   question_result = ($stdin.gets.chomp).to_i
#   actual_result = second_number + first_number
  
#   true_false = (actual_result === question_result)
#   puts true_false ? "You are Correct!" : "WRONG, You lose a life!!!" 

#   true_false ? nil : player_two.lose_life
#   puts "#{player_one.name} you have #{player_one.lives}/3 lives remaining and #{player_two.name} you have #{player_two.lives}/3 lives remaining"
#   # puts "-------NEW TURN ----------"

#   if (player_one.lives == 0 || player_two.lives == 0)
#     player_one.lives == 0 ? winner = player_two : player_two.lives == 0 ? winner = player_one : nil
#     puts "#{winner.name} wins with the score of #{winner.lives}/3"
#   else
#     puts "-------NEW TURN ----------"
#     puts "#{player_two.name} please input random number between 0 and 20"
#   end  