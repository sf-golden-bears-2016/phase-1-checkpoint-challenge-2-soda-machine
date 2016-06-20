class Soda
  attr_reader :brand, :price

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end

$pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
