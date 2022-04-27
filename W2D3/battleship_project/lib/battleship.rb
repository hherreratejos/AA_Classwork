require_relative "board"
require_relative "player"

class Battleship

    attr_reader :board, :player
    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @remaining_misses = @board.size / 2
    end

    def start_game
        @board.place_random_ships
        puts "There are #{@board.num_ships} ships"
        @board.print
    end

    def lose?
        if @remaining_misses <= 0 
            puts "you lose"
            true
        else
            false
        end
    end

    def win?
        if @board.num_ships == 0
            puts "you win"
            true
        else
            false
        end
    end

    def game_over?
        if win? || lose?
            true
        else
            false
        end
    end

    def turn
        pos = @player.get_move
        if @board.attack(pos)
            puts "remaining misses: #{@remaining_misses}"
        else
            @remaining_misses -= 1
            puts "remaining misses: #{@remaining_misses}"
        end
        @board.print
    end
end
