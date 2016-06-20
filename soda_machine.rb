class SodaMachine
  attr_reader :cash
  attr_accessor :sodas

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @brand = args[:brand]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.select {|key, value| value = soda_brand}
    p soda_brand
  end

  def sell(soda_brand)
  end
end


