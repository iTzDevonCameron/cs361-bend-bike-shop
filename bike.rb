# Bike
require_relative 'luggage'

class Bike
  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color

  def initialize(id, color, base_price, extra_items)
    @id = id
    @color = color
    @base_price = base_price
    @weight = STANDARD_WEIGHT
    @luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, extra_items)
  end

  def weight
    @weight
  end

  def luggage_weight
    @luggage.weight
  end

  def base_price
    @base_price
  end
end

