class HeadCount
  attr_reader :best_score


  def initialize
    @head_counter = 0
    @best_score = 0
    @coin = Coin.new
  end

  def flip_coin
    if @coin.flip == "Heads"
      @head_counter += 1
    else
      @best_score = @head_counter if best_score?
      @head_counter = 0
    end
  end

  def best_score?
    @head_counter > @best_score
  end

end

class Coin
  def initialize
    @randomizer = Randomizer.new
  end

  # returns a string
  def flip
    if @randomizer.random_number == 0
      "Heads"
    else
      "Tails"
    end
  end

end

class Randomizer
  # returns an integer
  def random_number
    rand(2)
  end

end
