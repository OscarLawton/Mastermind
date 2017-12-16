require_relative "board.rb"
require_relative "player.rb"
require_relative "game.rb"

gameOn = true


game = Game.new
game.makeCode

while gameOn
  game.makeGuess
 
  gameOn = game.compareCodes
  if gameOn == false
    game.displayCode
    puts "You Won!!!"
   end
end
