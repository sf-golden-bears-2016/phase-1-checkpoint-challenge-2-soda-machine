class SodaMachine
  attr_accessor :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    #return number of sodas it contains
    @sodas.length
  end

  def find_soda(soda_brand)
    #find a single soda with a given brand
    #iterate through sodas and when soda = brand return
    @sodas.each do |cur_soda|
      if cur_soda.brand == soda_brand 
        return cur_soda
        else
          return nil
      end
    end

  end

  def sell(soda_brand)
    #soda shold should be removed and cash added to soda machines cash
    @sodas.each do |cur_soda|
      p cur_soda.brand
      if cur_soda.brand == soda_brand
       @cash += cur_soda.price
       @sodas.delete(cur_soda)
      end
    end
    nil
  end

end
