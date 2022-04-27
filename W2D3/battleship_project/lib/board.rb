class Board

    attr_reader :size
    
  def initialize(n)
    @grid = Array.new(n) {Array.new(n, :N)}
    @size = n * n
  end

  def [](pos)
    @grid[pos[0]][pos[1]]
  end

  def []=(pos, value)
    @grid[pos[0]][pos[1]] = value
  end

  def num_ships
    count = 0
    @grid.each do |sarr|
        sarr.each do |el|
            if el == :S
                count += 1
            end
        end
    end
    count
  end

  def attack(pos)
    if self[pos] == :S
        self[pos] = :H
        puts "you sunk my battleship!"
        true
    else
        self[pos] = :X
        false
    end
  end

  def place_random_ships
    while num_ships < @size * 0.25
        pos = [rand(0...@grid.length), rand(0...@grid.length)] 
        self[pos] = :S
    end
  end

  def hidden_ships_grid
    new_grid = Array.new(@grid.length) {Array.new(@grid.length)}
    @grid.each_with_index do |sarr, i1|
        sarr.each_with_index do |el, i2|
            pos = [i1, i2]
            if self[pos] == :S
                new_grid[i1][i2] = :N
            else
                new_grid[i1][i2] = self[pos]
            end
        end
    end
    new_grid
  end

    def self.print_grid(arr)
        arr.each do |row|
            puts row.join(" ")
        end
    end
    
    def cheat
        Board.print_grid(@grid)
    end 

    def print
        Board.print_grid(hidden_ships_grid)
    end

end
