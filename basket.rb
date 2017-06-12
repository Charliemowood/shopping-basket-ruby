class Basket

  def initialize
    @inBasket = []
  end

  def itemCount
    count = @inBasket.length
    return count
  end

  def addItem(item)
    @inBasket.push(item)
  end

end
