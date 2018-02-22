require 'pry'

class CashRegister

  attr_accessor :discount, :total

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
    @prices = []
  end
  
  def add_item(title, price, quantity=1)
    @total += price*quantity
    quantity.times do
      @items << title
    end
    quantity.times do
      @prices << price
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total*(100-@discount)*0.01
      "After the discount, the total comes to $#{total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @prices.last
  end


end
