require_relative 'board.rb'
require_relative 'human_player.rb'
class Game
    attr_accessor :turn, :player_1, :player_2, :board, :turn
    def initialize(player_1_mark, player_2_mark)
        @player_1 = HumanPlayer.new(player_1_mark)
        @player_2 = HumanPlayer.new(player_2_mark)
        @board = Board.new
        @turn = @player_1
    end
    def switch_turn
        if self.turn == self.player_1
            self.turn = self.player_2
        else
            self.turn = self.player_1
        end
    end
    def play
        while @board.empty_positions? 
            @board.print
            pos = @turn.get_position
            @board.place_mark(pos, @turn.mark)
            if @board.win?(@turn.mark)
                return puts "victory for #{@turn.mark}"
            else
                self.switch_turn
            end
        end
        puts 'Tie'
    end
end
game1 = Game.new(:X, :O)
game1.play


