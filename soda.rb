require_relative 'soda_machine'

class Soda
  attr_reader :brand, :price

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end

pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
second_pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
