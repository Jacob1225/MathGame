#This is the main entrypoint to the program
#All files/classes will be required here

require './player'
require './game'
require './question'

#Initializing players

puts "Player 1, please enter your name"
first_name = gets.chomp.to_s

puts "Player 2, please enter your name"
second_name = gets.chomp.to_s

player1 = Player.new(first_name)
player2 = Player.new(second_name)

#Initializing the game

game = Game.new(player1, player2)

# Create the loop for the rounds 

while game.players[0].lives > 0 && game.players[1].lives > 0 do 
    puts "--- NEW TURN ---"

    question = Question.new
    puts "#{game.current_player.name}: #{question.generate_question}"

    answer = question.answer

    #Validate the player's answer
    player_answer = gets.chomp.to_i

    if (player_answer != answer)
        puts "#{game.current_player.name}: You're kidding right?"
        game.lose_life
    else 
        puts "#{game.current_player.name}: Yup! You got it!"
    end

    game.current_lives

    #Change player for the next turn 
    game.change_player

end
puts "--- GAME OVER ---"
puts "Good Bye!"

    
