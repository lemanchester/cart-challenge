require 'product_type'
class CPM < ProductType
  
  def calculate
    (quantity / 1000) * price
  end

end
