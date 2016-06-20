require_relative "soda"

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
    sodas.each do |i|
      i =0 
      if sodas[i].has_value?("soda_brand")
        return sodas("soda_brand")
      else 
        retun nil
      end
      i += 1
    end
  end

  def sell(soda_brand)
  end

end



# pepsi = Soda.new(brand: 'Pespi', price: 0.65)
# mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.65)


# soda_machine = SodaMachine.new(sodas: [pepsi, mountain_dew])

# soda_machine.find_soda(mountain_dew)

# p soda_machine.sodas
