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
    @sodas.find { |soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    #when the soda is not available to be sold, return nil
    #when the soda is available to be sold, add the price of the soda sold to the cash
    #and remove the sold soda from the machine
    @soda
    if find_soda?
      return nil
    end

  end

end
