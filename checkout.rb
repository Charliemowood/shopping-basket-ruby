require_relative './customer'
class Checkout

  def initialize
    @balance = 0
    @bogof_discount = 0
    @over20_discount = 0
    @subtotal = 0
    @loyality_card_discount = 0
    @grandtotal = 0
  end

  def setBogof_discount(discount)
    @bogof_discount = discount
  end

  def getBalance(basket, customer)

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

    if customer.checkLoyalityCardStatus == true
      @loyality_card_discount = @total * 0.02
    end

    @grandtotal = @total - @over20_discount - @loyality_card_discount
    return @grandtotal
  end

end
