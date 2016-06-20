class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    if @sodas.include?(soda_brand) 
      return 
    else
      nil
    end
  end

  def sell(soda_brand)
    if @sodas.include?(soda_brand) 
      @sodas.reject(soda_brand)
      @cash << soda_brand.price
      @cash.reduce(:+)
    else
      nil
    end
  end

end
soda_machine = SodaMachine.new
