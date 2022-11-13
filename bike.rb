# Bike

require_relative 'cargo'

class Bike

  STANDARD_WEIGHT = 200 # lbs
  
  attr_accessor :id, :color, :price, :weight, :rented, :cargo

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo = Cargo.new()
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    cargo.add_cargo(item)
  end

  def remove_cargo(item)
    cargo.remove_cargo(item)
  end

  def pannier_capacity
    cargo.pannier_capacity
  end

  def pannier_remaining_capacity
    cargo.pannier_remaining_capacity
  end

end
