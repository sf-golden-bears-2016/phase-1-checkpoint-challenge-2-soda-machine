require_relative 'soda'

class SodaMachine
  attr_reader :sodas
  attr_accessor :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
        soda = @sodas.find { |s| s.brand == soda_brand }
  end

  def sell(soda_brand)
    soda = @sodas.find { |s| s.brand == soda_brand }
    if soda
      @cash += soda.price
      return @cash
    end
  end

end

# driver
# pepsi = Soda.new(brand: "pepsi", price: 1.00)
# mountain_dew = Soda.new(brand: "mountain dew", price: 1.00)
# sodamachine = SodaMachine.new(sodas: [pepsi, mountain_dew] )

#  sodamachine.find_soda('coke')

# coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
# soda_machine = SodaMachine.new(sodas: [coke_zero], cash: 1.00)

# p soda_machine.sell('Coke Zero')





