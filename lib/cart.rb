class Cart < Struct.new(:products_and_quantity)

  def total
    products_and_quantity.inject(0) { |sum, p| sum += p[:product].subtotal(p[:quantity])  }
  end

end
