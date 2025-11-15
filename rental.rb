class Rental
  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    bike.base_price +
      (2 * bike.weight) +
      (2 * bike.luggage_weight)
  end

  def weight
    bike.weight + bike.luggage_weight
  end
end

