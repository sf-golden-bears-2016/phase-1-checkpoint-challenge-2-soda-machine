class Soda
  attr_reader :brand, :price

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end

  def current_inventory
    soda.brand.length
  end

  def find_soda(soda)
    sodas.find { |soda| soda.brand == soda.brand}
  end

end
