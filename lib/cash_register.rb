class CashRegister
  attr_accessor :total, :discount

  @@items = []
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def add_item (item, price, quantity = 1)
    @total += (price*quantity)
    @@items << item
  end
  def apply_discount
    @total = @total*((100-discount)/100)
    @total
  end
end
