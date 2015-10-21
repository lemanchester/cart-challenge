require 'cpm'
require 'cpc'
class Product < Struct.new(:name, :price, :type)
 
  def subtotal(quantity)
    case type
    when "CPM"
      CPM.new(quantity, price).calculate
    when "CPC"
      CPC.new(quantity, price).calculate
    else
      price
    end
  end

end
