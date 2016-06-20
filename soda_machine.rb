class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    count_array = []
    count_array << @sodas
    count_array.length
  end

  def find_soda(soda_brand)
  end

  def sell(soda_brand)
  end

end


machine = SodaMachine.new
p machine.current_inventory_count
