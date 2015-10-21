require 'product_type'
class CPC < ProductType

  def calculate
    quantity * price
  end

end
