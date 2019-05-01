class CashRegister
  attr_accessor :total, :discount, :items
  ITEMS = []
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def add_item (item, price, quantity = 1)
    @total += (price*quantity)
    ITEMS << item
  end
  def apply_discount
    if !(discount == 0)
      @total = @total - (@total*discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  def items
    ITEMS
  end
end
