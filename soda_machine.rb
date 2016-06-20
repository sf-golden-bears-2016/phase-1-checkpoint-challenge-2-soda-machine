require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.length
  end

  def find_soda(soda_brand)
    if sodas.find #times up
   sodas.find { |soda| soda.brand == soda.brand}
  end

  def sell(soda_brand)
    if find_soda(soda_brand) != nil
      sodas.find { |soda_brand| soda_brand.price + sodamachine.cash}
      sodas.delete(soda_brand)
    end
  end
end
