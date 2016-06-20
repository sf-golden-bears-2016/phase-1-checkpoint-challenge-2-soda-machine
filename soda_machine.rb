class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    current_count=0
    @sodas.each_with_index do |x|
      current_count+=1
    end
    current_count
  end

  def find_soda(soda_brand)

    idx=0
      until idx > sodas.length
          if sodas[idx] == soda_brand
            return sodas[idx]
          elsif sodas[idx] != soda_brand
          end
          idx+=1
       end


  end

  def sell(soda_brand)
    if soda_machine(soda_brand) != nil
      return soda_machine(soda_brand)
    end
  end

end
