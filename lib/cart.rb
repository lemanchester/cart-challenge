class Cart < Struct.new(:products_and_quantity)
  def total
    products_and_quantity.map do |hash|
      get_subtotal(hash[:product], hash[:quantity])
    end.inject(:+)
  end

  def get_subtotal(product, quantity)
    product.subtotal(quantity)
  end
end
