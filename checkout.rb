require_relative './basket'
class Checkout

  def initialize
    @balance = 0
  end

  def getBalance(basket)
    array = basket.getItemArray
    
    for item in array
      @balance += item.getPrice
    end
    return @balance
  end


end
