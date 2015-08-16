class Product < Struct.new(:name, :price, :type)

  def subtotal(quantity)
    if type == "CPM"
      return (quantity / 1000) * price
    elsif type == "CPC"
      return quantity * price
    else
      return 1 * price
    end
  end

end
