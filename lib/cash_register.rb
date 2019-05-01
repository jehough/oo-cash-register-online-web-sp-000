class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def add_item (item, price, quantity = 1)
    @total += (price*quantity)
    while quantity > 0
      (@items||=[]) << item
      quantity -= 1
    end
    @last_transaction = {price: 0, quantity: 0}
    @last_transaction[:price] = price
    @last_transaction[:quantity] = quantity
  end
  def apply_discount
    if !(discount == 0)
      @total = @total - (@total*discount/100)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  def void_last_transaction

end
