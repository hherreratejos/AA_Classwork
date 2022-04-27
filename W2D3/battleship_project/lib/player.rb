class Player
    def get_move
        puts "enter a position with coordinates separated with a space like '4 7'"
        n = gets.chomp
        nums = n.split
        arr = [nums[0].to_i, nums[1].to_i]
        arr
    end
end
