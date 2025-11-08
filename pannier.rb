class Pannier
  MAX_ITEMS = 10

  def initialize
    @contents = []
  end

  def add(item)
    raise 'Pannier is full' if full?
    @contents << item
  end

  def remove(item)
    @contents.delete(item)
  end

  def remaining_capacity
    MAX_ITEMS - @contents.size
  end

  private

  def full?
    @contents.size >= MAX_ITEMS
  end
end