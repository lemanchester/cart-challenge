require 'cpm'
require 'cpc'
class Product < Struct.new(:name, :price, :type)
 
  def subtotal(quantity)
    Object.const_defined?(type) ? Object.const_get(type).new(quantity, price).calculate : price
  end

end
