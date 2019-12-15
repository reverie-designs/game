require "./game.rb"
puts "Welcome to the Ruby world of addition"
puts "Player 1 please enter your name: "
print "> "
player_1 = $stdin.gets.chomp

puts "Player 2 please enter your name: "
print "> "
player_2 = $stdin.gets.chomp

game = Game.new(player_1, player_2)

game.play_game