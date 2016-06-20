class Soda
  attr_reader :brand, :price

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end

# soda = Soda.new(...)
# p soda.brand
