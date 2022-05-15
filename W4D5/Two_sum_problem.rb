def brute_force(arr, target)
    arr.each_with_index do |el1, i1|
        arr.each_with_index do |el2, i2|
            if i2 > i1 && el1 + el2 == target
                return true
            end
        end
    end
    false
end

arr = [0, 1, 5, 7]
p brute_force(arr, 6) 
p brute_force(arr, 10)

def sort(arr, target)
    sorted = arr.sort
    (0..arr.length - 2).each do |i|
        return true if arr[i] + arr[i+1] == target
    end
    false
end #(n log n)

arr = [0, 1, 5, 7]
p sort(arr, 6) 
p sort(arr, 10)

def hash_map(arr,target)
    hash = {}
    arr.each_with_index do |el, i|
        possible = target - el
        if hash[possible] = true
            return true
        else
            hash[el] = true
        end
    end
    false
end #(n)

arr = [0, 1, 5, 7]
p hash_map(arr, 6) 
p hash_map(arr, 10)