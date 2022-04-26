# Monkey-Patch Ruby's existing Array class to add your own custom methods
require "byebug"

class Array
  def span
    if self.length == 0
        return nil
    else
        self.max - self.min
    end
  end

  def average
    if self.length == 0
        return nil
    else
        self.sum * 1.0 / self.length
    end
  end

  def median
    x = self.length / 2
    if self.length == 0
        return nil   
    elsif self.length % 2 == 0
        return (self.sort[x - 1] + self.sort[x]) / 2.0
    else
        return self.sort[x]
    end
  end

  def counts
    count = Hash.new(0)
    self.each do |el|
        count[el] += 1
    end
    count
  end

  def my_count(v)
    count = 0
    self.each do |el|
        if el == v
            count += 1
        end
    end
    count
  end

  def my_index(v)
    idx = []
    self.each_with_index do |el, i|
        if el == v
            idx << i
        end
    end

    if idx.length == 0
        return nil
    else
        return idx[0]
    end
  end

  def my_uniq
    arr = []
    self.each do |el|
        if !arr.include?(el)
            arr << el
        end
    end
    arr
  end
  def my_transpose
    result = []
    (0...self.length).each do |i|
        arr = []
        self.each do |sarr|
            arr << sarr[i]
        end
        result << arr
    end
    result
  end
end
