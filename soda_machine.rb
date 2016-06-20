class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    [:sodas].count #A soda machine will be able to return the number of sodas it contains.
  end


  def find_soda(soda_brand)
    @sodas.each do |soda| return
    #A soda machine will be able to find a single soda with a given brand.
    [:sodas][soda_brand]
  end

  def sell(soda_brand)
    #A soda machine will be able to sell a soda with a given brand. When a soda is sold, it should
  #be removed from the soda machine and the price of the soda should be added to the soda machine's cash
p
  end
end



m = SodaMachine.new(brand: 'Pepsi', price: 0.65)
p m
