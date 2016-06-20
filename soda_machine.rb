class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas = @sodas.length
  end

  def find_soda(soda_brand)
    if @sodas.values.include?(soda_brand) == true
      return soda_brand
    else
      return nil
    end
  end

  def sell(soda_brand)
    if @sodas.include?(soda_brand) == true
      @sodas.delete(soda_brand)
      @cash + 1.00
    else
      return nil
    end
  end

end
