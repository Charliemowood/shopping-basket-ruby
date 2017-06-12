class Checkout

  def initialize
    @balance = 0
    @bogof_discount = 0
    @over20_discount = 0
    @total = 0
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
    @total = @balance - (@bogof_discount / 2)

    if @total > 20
      @over20_discount = @total * 0.1
    end
    return @total - @over20_discount
  end

end
