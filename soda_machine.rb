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
    @sodas.select { |soda| soda.brand == soda_brand }.first
  end

  def sell(soda_brand)
    # puts "@cash.class:"
    # p @cash.class
    soda = find_soda(soda_brand)
    if soda != nil
      @cash += soda.price
      @sodas.delete(soda)
    else
      return nil
    end

    # puts "object_id for soda:"
    # p soda.object_id

  end
end
