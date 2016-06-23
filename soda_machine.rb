require_relative 'soda'

class SodaMachine
  attr_accessor :sodas, :cash

# args --> all arguments passed to the function
#will be put into an array called args

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
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
    p @sodas
    puts "***************************************************"
    @sodas.each do |soda|
      if soda.brand == soda_brand
        @cash += soda.price
        @sodas.delete(soda)
        p "whatsup"
      end
    end
       return nil
  end

  # def sell(soda_brand)
  #   return nil if find_soda(soda_brand) == nil
  #   sold_soda = find_soda(soda_brand)
  #   @cash += soda.price
  #   @sodas.delete(soda_brand)
  # end

end





# dr_pepper = Soda.new
# taylor = SodaMachine.new
# taylor.find_soda("Coke")
# # taylor.add_soda(dr.pepper)
# taylor.sell("Coke")
# (((((  def add_soda(soda); @sodas << soda; end                 )))))
