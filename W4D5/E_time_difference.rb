require 'byebug'

def my_min(arr)
    min = arr[0]
    arr.each do |el|
        arr.each do |el2|
            min = el2 if el2 < min
        end
    end
   min
end #(n^2)

def cool_my_min(arr)
    min = arr[0]
    arr.each do |el|
        min = el if el < min
    end
    min
end#(n)

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)
# p cool_my_min(list)

def largest_contiguous_subsum(arr)
    subsums = []
    subs = []
    (0...arr.length).each do |i|
        (0...arr.length).each do |j|
            if j >= i 
                subsums << arr[i..j].sum
                subs << arr[i..j]
            end
        end
    end
    subsums.max
end #(n^2)

def cool_largest_contiguous_subsum(arr)
    biggest_sum = arr[0]
    current_sum = 0
    arr.each do |el|
        current_sum = 0 if el > biggest_sum
        biggest_sum = el if el > biggest_sum
        current_sum += el
        biggest_sum = current_sum if current_sum > biggest_sum
    end
biggest_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum(list)
p cool_largest_contiguous_subsum(list)

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)
p cool_largest_contiguous_subsum(list)

list = [-5, -1, -3]
p largest_contiguous_subsum(list)
p cool_largest_contiguous_subsum(list)