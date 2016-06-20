class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
     @sodas.length
  end

#A soda machine will be able to find a single soda with a given brand. This method will be called SodaMachine#find_soda.


  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      end
   end
   return nil
  end

end

#A soda machine will be able to sell a soda with a given brand. When a soda is sold, it should be removed from the soda machine and the price of the soda should be added to the soda machine's cash This method will be called SodaMachine#sell.
  def sell(soda_brand)
    @sodas.each do |soda|
    @sodas.delete
  end

  end

# end


# machine = SodaMachine.new
# p machine.current_inventory_count
# # p machine.find_soda("Pepsi")
# # p machine.sell
