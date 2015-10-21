class CPC
  attr_reader :quantity, :price

  def initialize(quantity, price)
    @quantity = quantity
    @price = price
  end

  def calculate
    quantity * price
  end

end
