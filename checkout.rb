class Checkout

  def initialize
    @balance = 0
    @bogof_discount = 0
  end

  def setBogof_discount(discount)
    @bogof_discount = discount
  end

  def getBalance(basket)

    array = basket.getItemArray

    for item in array
      @balance += item.getPrice
      if item.getBogofStatus == true
        @bogof_discount += item.getPrice
      end
    end

    return @balance - (@bogof_discount / 2)
  end
end
