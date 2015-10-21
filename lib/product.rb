class Product < Struct.new(:name, :price, :type)
  def subtotal(quantity)
    case type
    when 'CPM' then cpm(quantity)
    when 'CPC' then cpc(quantity)
    else price
    end
  end

  def cpm(quantity)
    (quantity / 1000) * price
  end

  def cpc(quantity)
    quantity * price
  end
end
