class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
  end
end

class String
  def hash
    alpha = "0123456789 abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    chars = self.split("")
    indices = chars.map {|char| alpha.index(char)}
    acc = 0

    indices.each_with_index do |num, i|
      acc = acc ^ (num * i)
      
    end

    acc
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
