class SodaMachine
  attr_accessor :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.count
  end

  def find_soda(soda_brand)
    sodas.select do |soda|
      if soda.brand == soda_brand
        return soda
      else
        return nil
      end
    end
  end

  def sell(soda_brand)
    if !sodas.include?(soda_brand)
      nil
    else
      @cash += soda.price
      @sodas.delete(soda)
    end
  end

end

