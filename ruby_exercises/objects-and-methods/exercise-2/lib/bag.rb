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

  def contains?(candy_type)
    @candies.any? do |candy|
      candy.type == candy_type
    end
  end 

  def grab(candy_type)
    candy_position = @candies.index do |candy|
      candy.type == candy_type
    end

    if candy_position
      @candies.delete_at(candy_position)
    end
  end

  def take(number)
    if number == 1
      @candies.pop
    else
      @candies.pop(number)
    end
  end
end