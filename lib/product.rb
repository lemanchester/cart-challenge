require 'cpm'
require 'cpc'
class Product < Struct.new(:name, :price, :type)
 
  def subtotal(quantity)
    ProductType.const_get(type).new(quantity, price).calculate
  end

end
