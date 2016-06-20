require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
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
    # SEBA should have used find_soda method to be dry but it didn't like it.

    # cycle through the sodas for a match
    # p @cash.class
    @sodas.each do |soda|
      # p soda.price
      if soda.brand == soda_brand
        # remove the soda from the machine
        @sodas.delete(soda)
        # add price to soda machine cash
        return @cash += soda.price
      else
        return nil
      end
    end
  end

end

# SEBA why doesn't it recognize these variables with the require relative?
# nelson = SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero,second_pepsi], cash: 1.00)

