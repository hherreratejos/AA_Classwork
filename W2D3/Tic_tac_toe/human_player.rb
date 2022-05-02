class HumanPlayer
    attr_reader :mark
    def initialize(mark)
        @mark = mark
    end
    def get_position
        puts "Enter the position as two numbers with a space between them:"
        x = gets.chomp
        y = x.split
        if y.length != 2 || y.any? {|pos| pos != pos.to_i.to_s}
            raise "Invalid entry"
        end
        pos = [y[0].to_i, y[1].to_i]
        pos
    end
end