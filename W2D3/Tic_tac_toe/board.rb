class Board
    attr_accessor :grid
    def initialize
        @grid = Array.new(3){Array.new(3, "_")}
    end
    def valid?(pos)
        if (pos[0] <= 2 && pos[0] >= 0) && (pos[1] <= 2 && pos[1] >= 0)
            return true
        else 
            raise 'error'
        end       
    end
    def empty?(pos)
        if @grid[pos[0]][pos[1]] == "_"
            return true
        end
        false
    end
    def place_mark(pos, mark)
        if self.valid?(pos) && self.empty?(pos)
            @grid[pos[0]][pos[1]] = mark
        end
    end
    def print
        @grid.each do |row|
            p row
        end
    end
    def win_row?(mark)
        @grid.each do |row|
            if row.all? {|el| el == mark}
            return true
            end
        end
        false
    end
    def win_col?(mark)
        arr = []
        b = Board.new
        (0...@grid.length).each do |i|
            sarr = []
            @grid.each do |row|
                sarr << row[i]
            end
            arr << sarr
        end
        b.grid = arr
        b.win_row?(mark)
    end
    def win_diagonal?(mark)
        ltor = []
        (0...@grid.length).each do |i|
            ltor << @grid[i][i]
        end
        rtol = []
        (0...@grid.length).each do |i|
            rtol << @grid[i][@grid.length - 1 - i]
        end
        if ltor.all? {|el| el == mark}
            return true
        elsif rtol.all? {|el| el == mark}
            return true
        end
        false
    end
    def win?(mark)
        if self. win_row?(mark)
            return true
        elsif self.win_col?(mark)
            return true
        elsif win_diagonal?(mark)
            return true
        end
        false
    end
    def empty_positions?
        @grid.each do |row|
            row.each do |el|
                if el == "_"
                    return true
                end
            end
        end
        false
    end
end