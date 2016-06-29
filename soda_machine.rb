class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
     @sodas.each do |soda|
      if soda_brand == soda.brand
       return soda
     else
      return nil
      end
    end
  end

  def sell(soda_brand)
    # when soda_brand = soda.brand (the brand of the soda) we're going to delete the soda from the array of Sodas in SodaMachine. We'll take the price of that soda and add it to the cash of the SodaMachine
    @sodas.each do |soda|
      if soda_brand == soda.brand
        @cash += soda.price
        @sodas.delete(soda)
      end
    end
    nil
  end

end
