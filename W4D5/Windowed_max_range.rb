require 'byebug'

def naive(arr, size)
    diffs = []
    arr.each_with_index do |el1, i1|
        arr.each_with_index do |el2, i2|
            if i2 == i1 + size - 1
                min = arr[i1..i2].min
                max = arr[i1..i2].max
                diffs << max - min
            end
        end
    end
    diffs.max
end # (n^3) or (n^2) ??

# p naive([1, 0, 2, 5, 4, 8], 2)# 4, 8
# p naive([1, 0, 2, 5, 4, 8], 3) # 0, 2, 5
# p naive([1, 0, 2, 5, 4, 8], 4) # 2, 5, 4, 8
# p naive([1, 3, 2, 5, 4, 8], 5)# 3, 2, 5, 4, 8

class MyQueue
    attr_reader :store
    def initialize
        @store = []
    end

    def peek
        @store[0]
    end

    def size
        @store.length
    end

    def empty?
        return true if @store.length == 0
        false
    end

    def enqueue(el)
        @store << el
    end

    def dequeue
        @store.shift
    end
end

class MyStack
    def initialize
        @store = []
    end

    def peek
        @store[-1]
    end

    def size
        @store.length
    end

    def empty?
        return true if @store.length == 0
        false
    end

    def pop
        @store.pop
    end

    def push(el)
        @store.push(el)
    end
end

class StackQueue
    def initialize
        @store = [Stack.new, Stack.new]
    end
end

