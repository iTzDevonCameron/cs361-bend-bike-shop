class Rental
  attr_reader :rented

  def initialize
    @rented = false
  end

  def rent!
    @rented = true
  end

  def rented?
    @rented
  end
end