class Bag
  attr_reader :candies 

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.count
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(name)
    @candies.any? do |candy|
      candy.type == name
    end
  end
end