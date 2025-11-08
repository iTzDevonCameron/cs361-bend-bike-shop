class Bike
  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :rental, :pannier

  def initialize(id:, color:, price:, weight: STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rental = Rental.new
    @pannier = Pannier.new
  end

  def rent!
    rental.rent!
  end

  def rented?
    rental.rented?
  end

  def add_cargo(item)
    pannier.add(item)
  end

  def remove_cargo(item)
    pannier.remove(item)
  end

  def pannier_remaining_capacity
    pannier.remaining_capacity
  end
end