require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=20)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    quantity != 1 ? self.total += (price * quantity) : self.total += price
  end

  def apply_discount
    self.total -= (self.total * self.discount)/100
    if self.discount != 0
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
end
