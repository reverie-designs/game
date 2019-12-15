require_relative "./player.rb"
require "./question.rb"

class Game
  attr_accessor :current_player
  attr_reader :p1, :p2

  def initialize(p1, p2)
      @p1 = Player.new(p1)
      @p2 = Player.new(p2)
      p "Ready to RUMBLE"
      @current_player = @p1
  end

  def check_status
    if (p1.lives == 0 || p2.lives == 0)
          self.game_over
    else
      self.reset_current_player
      puts "-------NEW TURN ----------"
      self.play_game
    end  
  end

  def play_game

    question = Question.new
    player_answer = question.print_question(current_player)
    check_answer = question.check_answer(player_answer)

    check_answer ? nil : current_player.lose_life

    puts check_answer ? "You are Correct!" : "WRONG, You lose a life!!!" 
    puts "Your current scores are: #{p1.name} you have #{p1.num_of_lives} lives and #{p2.name} you have #{p2.num_of_lives} lives"
    
    self.check_status
  end  

  def reset_current_player
    @current_player == @p1 ? @current_player = @p2 : @current_player = @p1
  end

  def game_over
    puts "---- CONGRATULATIONS ----"
    p1.lives == 0 ? winner = p2 : p2.lives == 0 ? winner = p1 : nil
    puts "#{winner.name} wins with the score of #{winner.lives}/3"
  end

end