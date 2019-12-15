
class Game
  attr_accessor :name

  def initialize(name)
    @name = name
    p "Ready to RUMBLE"
  end
end

class Player
  @@number_of_players = 0
  attr_accessor :name
 #  lives remaining
  def initialize(name)
    @name = name
    @lives = 1
  end
  def welcome_player
    puts "Welcome #{self.name}!"
  end
  def lives
    @lives
  end
  def lose_life
    @lives -= 1
  end  
end



def play_game(game, player_one, player_two)
  puts "#{player_one} you have #{player_one.lives}/3 lives and #{player_two} you have #{player_two.lives}/3 lives"
end  

def start
  puts "Welcome to our awesome Math game"
  puts "Player 1 please enter your name: "
  print "> "
  player_one = Player.new($stdin.gets.chomp)
  player_one.welcome_player

  puts "Player 2 please enter your name: "
  print "> "
  player_two = Player.new($stdin.gets.chomp)
  player_two.welcome_player

  new_game = Game.new("#{player_one} vs #{player_two}")
  # play_game(player_one, player_two, new_game)
  puts "#{player_one.name} you have #{player_one.lives}/3 lives remaining and #{player_two.name} you have #{player_two.lives}/3 lives remaining"
  puts "#{player_one.name} please input random number between 0 and 20"
  print "> "
  first_number = ($stdin.gets.chomp).to_i
  puts "#{player_one.name} please input another random number between 0 and 20"
  print "> "
  second_number = ($stdin.gets.chomp).to_i

  puts "#{player_two.name} what is #{first_number} + #{second_number}?"
  print "#{player_two.name}: "
  question_result = ($stdin.gets.chomp).to_i
  actual_result = second_number + first_number
  
  true_false = (actual_result === question_result)
  puts true_false ? "You are Correct!" : "WRONG, You lose a life!!!" 

  true_false ? nil : player_two.lose_life
  puts "#{player_one.name} you have #{player_one.lives}/3 lives remaining and #{player_two.name} you have #{player_two.lives}/3 lives remaining"
  # puts "-------NEW TURN ----------"

  if (player_one.lives == 0 || player_two.lives == 0)
    player_one.lives == 0 ? winner = player_two : player_two.lives == 0 ? winner = player_one : nil
    puts "#{winner.name} wins with the score of #{winner.lives}/3"
  else
    puts "-------NEW TURN ----------"
    puts "#{player_two.name} please input random number between 0 and 20"
  end  
end


start