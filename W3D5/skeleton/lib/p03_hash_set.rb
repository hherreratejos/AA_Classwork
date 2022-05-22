class HashSet
  attr_accessor :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    resize! if self.count == num_buckets
    hashed = key.hash
    self.count += 1 unless self.include?(key)
    self[hashed] << key unless self.include?(key)
  end

  def include?(key)
    hashed = key.hash
    self[hashed].include?(key)
  end

  def remove(key)
    hashed = key.hash
    if self.include?(key)
      idx = self[hashed].index(key)
      self[hashed].delete_at(idx)
      self.count -= 1
    end
  end

  private

  def [](num)
    # optional buts useful; return the bucket corresponding to `num`
    @store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end

  def resize!
    new_arr = Array.new(num_buckets * 2) {Array.new}
    @store.each do |bucket|
      bucket.each do |key|
        hashed = key.hash
        new_arr[hashed % new_arr.length] << key
      end
    end
    @store = new_arr
  end
end
