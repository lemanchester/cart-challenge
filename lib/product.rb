class Product < Struct.new(:name, :price, :type)

  def subtotal(quantity)
    case type
    when "CPM"
      (quantity / 1000) * price
    when "CPC"
      quantity * price
    else
      price
    end
  end

end
