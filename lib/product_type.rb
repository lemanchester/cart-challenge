class ProductType 
  attr_reader :quantity, :price

  def initialize(quantity, price)
    @quantity = quantity
    @price = price
  end
  
  def calculate
  end

end
