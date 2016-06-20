# Update the SodaMachine class in soda_machine.rb to make the tests pass.

# Do not modify the tests and do not modify the Soda class

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
      return sodas.count
  end

  def find_soda(soda_brand)

    if self.sodas.include(soda_brand.to_sym)
      return true
    else
      return nil
    end

  end

  def sell(soda_brand)
    if sodas.find_soda == nil
      return nil
    else

    end


  end

end
