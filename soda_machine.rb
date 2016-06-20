class SodaMachine
  attr_reader :sodas, :cash, :inventory


  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
    @inventory = args.length
  end

  def current_inventory_count
    p sodas
  end

  def find_soda(soda_brand)
     sodas
  end

  def sell(soda_brand)

  end



end


soda_machine = SodaMachine.new(sodas: [$pepsi], cash: 1.00)
p soda_machine.sodas


# pepsi = Soda.new(brand: 'Pepsi', price: 0.65)

