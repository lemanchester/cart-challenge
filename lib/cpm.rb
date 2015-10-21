class CPM
  attr_reader :quantity, :price

  def initialize(quantity, price)
    @quantity = quantity
    @price = price
  end
  
  def calculate
    (quantity / 1000) * price
  end

end
