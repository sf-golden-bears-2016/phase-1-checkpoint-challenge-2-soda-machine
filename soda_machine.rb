class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.count
  end

  def find_soda(soda_brand)
     @sodas.each do |soda|
      if soda == soda.brand
        return soda_brand
      else
        nil
      end
    end
  end

  def sell(soda_brand)
  end

end

#soda = SodaMachine.new(brand: 'Mountain Dew', price: 0.75)
#p soda.sodas
