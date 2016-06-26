require_relative 'soda'

class SodaMachine
  attr_reader :sodas
  attr_accessor :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def currentl_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
        soda = @sodas.find { |s| s.brand == soda_brand }

  end

  def sell(soda_brand)
    soda = @sodas.find { |s| s.brand == soda_brand }
    if soda
      @cash += soda.price
      return @cash
    end
  end

end





