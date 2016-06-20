class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  #the sodas are initialized as an array, so I have to simply find the
  #length of the array containing the soda objects
  def current_inventory_count
    @sodas.length
  end

  #returns the soda object that the user request
  #which are stored in the array of sodas, so I have to search the array for
  #the soda object
  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      end
    end
    return nil
  end

  def sell(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        @sodas.delete(soda)
        @cash += soda.price
      end
    end
    return nil
  end

end

