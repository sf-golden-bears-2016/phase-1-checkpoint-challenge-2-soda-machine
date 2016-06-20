class SodaMachine
  attr_reader :sodas, :cash
  @@inventory_count
  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @@inventory_count += 1
  end

  def current_inventory_count
    @@inventory_count
  end

  def find_soda(soda_brand)
  end

  def sell(soda_brand)
  end

end
