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
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      end
    end
    return nil
  end

  def sell(soda_brand)
    sold = nil
    @sodas.each do |soda|
      if soda.brand == soda_brand
        @cash += soda.price
        @sodas.delete(soda)
      end
    end
    nil
  end
end

  #   @sodas.each do |soda|
  #     if soda.brand != soda_brand  
  #       return nil
  #     end
  #   end
  #   @sodas.each do |soda|
  #     if soda.brand == soda_brand
  #       @cash += soda.price
  #       @sodas.delete(soda)
  #     end
  #   end
  # end