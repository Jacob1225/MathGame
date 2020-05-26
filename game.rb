require './player'

class Game
    attr_accessor :current_lives, :current_player, :players, :change_player

    def initialize(player1, player2)
        @players = [player1, player2]
        @player_index = 0
        @current_player = @players[@player_index]
    end

    def change_player
        if @current_player == @players[0]
            @current_player = @players[1]
        
        else 
            @current_player = @players[0]
        end
    end

    def lose_life
        @current_player.lives -= 1

        if @current_player.lives == 0 
            if @current_player == @players[0]
                puts "#{players[1].name} wins with a score of #{players[1].lives}/3"

            else 
                puts "#{players[0].name} wins with a score of #{players[0].lives}/3"
            end
            
        end
    end

    def current_lives 
        puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
    end
end