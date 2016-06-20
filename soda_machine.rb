class SodaMachine
  attr_reader :sodas, :cash
  @@num_sodas=[]
  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @@num_sodas<<self
  end

  def current_inventory_count
   @sodas.count
  end

  def find_soda(soda_brand)
    
    if @@num_sodas['brand'].include?(soda_brand)
      return soda_brand
    else
      return 
      nil
    end
  end

  def sell(soda_brand)
  end

end
