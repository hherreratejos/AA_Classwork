class MaxIntSet

  attr_reader :store

  def initialize(max)
    @store = Array.new(max, false)
  end

  def insert(num)
    raise "Out of bounds" if num >= @store.length || num < 0
    @store[num] = true
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    @store[num]
  end

end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    bucket = self[num]
    bucket << num unless bucket.include?(num)
  end

  def remove(num)
    bucket = self[num]
    idx = bucket.index(num)
    bucket.delete_at(idx) if idx
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    resize! if @count >= num_buckets
    unless self[num].include?(num)
      self[num] << num
      @count += 1
    end
  end

  def remove(num)
    idx = self[num].index(num)
    if idx
      self[num].delete_at(idx)
      @count -= 1
    end
  end

  def include?(num)
    # return false if self[num] == []
    self[num].include?(num)
  end

  private
  
  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end

  # def store=(arr)
  #   @store = arr
  # end

  def resize!
    if @count >= num_buckets
      new_arr = Array.new(num_buckets * 2) { Array.new }
      @store.each do |bucket|
        bucket.each do |ele|
          new_arr[ele % new_arr.length] << ele
        end
      end
      @store = new_arr
    end
  end
end
