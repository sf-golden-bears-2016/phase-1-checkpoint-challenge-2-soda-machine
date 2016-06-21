class SodaMachine
  attr_reader :sodas, :cash, :brand, :price

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @brand = args[:brand]
    @price = args[:price]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    # soda_brand_format = soda_brand.downcase
    #if class instance of sodamachine has soda_brand_format as a brand, return the name of the class instance
    #NOTE: dont know finding class instance within soda_machine array
   #  i = 0
   #  while i < @sodas.length
   #  if @sodas[i].brand == soda_brand_format
   #    sodas[i]
   #  else
   #    return nil
   #  end
   #  i += 1
   # end

  @sodas.each do |soda_instance| 
    return soda_instance if soda_instance.brand == soda_brand
    return nil
    end
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    if find_soda(soda_brand)
      @cash += soda.price
      @sodas.delete(soda)
    end
  end

end
