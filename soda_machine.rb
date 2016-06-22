class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
  	sodas.length
  end

  def find_soda(soda_brand)
# When they input a value of a key/value pair as a string, it should return the hash name which is an instance of a class
	@sodas.each do |soda|
		if soda_brand == soda.brand
			return soda
		else
			return nil
		end
	end
  end

  def sell(soda_brand)

  end

end

