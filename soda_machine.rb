class SodaMachine
  attr_reader :sodas, :cash

  @@inventory_count = 0
  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @@inventory_count += :sodas.length - 1
  end

  def current_inventory_count
    @@inventory_count
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      else
        return nil
      end
    end
  end


  def sell(soda_brand)
    @sodas.keep_if { |soda| soda == soda_brand}
    @sodas.each do |soda|
      if soda.brand == soda_brand
        SodaMachine.cash += soda.price
      else
        return nil
      end
    end
    # end
    # @cash += soda.cash
      
  end

end

