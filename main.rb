require './player.rb'
require './question.rb'
require './display.rb'


puts "Welcome to the game!"

display = Display.new()
player1 = Player.new(1)
player2 = Player.new(2)

player = player1

while player1.score !=0 && player2.score !=0 do
  question = Question.new(player, (rand() * 20).to_i, (rand() * 20).to_i)
  question.ask()
  display.show_score(player1, player2)
  if player == player1
    player = player2
  else
    player = player1
  end
  puts "--- NEW TURN ---"
end

if player1.score == 0
  puts "Player 2 wins with a score of #{player2.score}/3"
end

if player2.score == 0
  puts "Player 1 wins with a score of #{player1.score}/3"
end

puts "--- GAME OVER ---"
puts "Good Bye!"


