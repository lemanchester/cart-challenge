class Cart < Struct.new(:products_and_quantity)

  def total
    products_and_quantity.map do |hash|
      hash[:product].subtotal(hash[:quantity])
    end.inject(:+)
  end

end
