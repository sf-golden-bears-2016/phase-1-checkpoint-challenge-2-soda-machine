# Update the SodaMachine class in soda_machine.rb to make the tests pass.

# Do not modify the tests and do not modify the Soda class

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
      return @sodas.count
  end

  def find_soda(soda_brand)

    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      else
          return nil
      end
    end

  end

  def sell(soda_brand)

    if @sodas.include(soda_brand) = false
      return nil
    else
      @sodas.each do |x|
        if x.brand == soda_brand
          @cash += x.price
          @sodas.delete(x)
          @cash
        else
          return nil
        end

      end
    else
      return nil
    end
  end
end
