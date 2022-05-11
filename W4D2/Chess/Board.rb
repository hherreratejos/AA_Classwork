require_relative 'pieces.rb'
require_relative 'Nullobj.rb'

class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) {Array.new(8, NullPiece.instance)}

    end

    def [](pos)
        row, col = pos
        @rows[row][col] 
    end

    def []= (pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    def set_piece
        @rows.each_with_index do |row, idx|
            if idx == 0 || idx == 1 || idx == 6 || idx ==7
                row.each_with_index do |el, idx2|
                    @rows[idx][idx2] = Piece.new
                end
            end
        end
    end

    def move_piece(start_pos, end_pos)
        #if self[start_pos] != NullPiece && self[end_pos] == NullPiece && vaild_pos?(start_pos) && vaild_pos?(end_pos) #NullPiece.empty?
        if !self[start_pos].is_a?(NullPiece) && self[end_pos].empty? && vaild_pos?(start_pos) && vaild_pos?(end_pos) #NullPiece.empty?

            self[end_pos] = self[start_pos]
            self[start_pos] = NullPiece.instance
        else
            raise "not valid"            
        end
    end

    def vaild_pos?(position)
        row, col = position
        return true if row < 8 && row >= 0 && col < 8 && col >= 0
        false
    end
end