class Basket

  def initialize
    @inBasket = []
  end

  def item_count
    count = @inBasket.length
    return count
  end

  def add_item(item)
    @inBasket.push(item)
    if item.getBogofStatus == true
      @inBasket.push(item)
    end
  end

  def double_item(item)
    @inBasket.push(item)
    @inBasket.push(item)
  end

  def remove_item(item)
    @inBasket.delete(item)
  end

  def empty
    @inBasket.clear
  end

  def getItemArray
    @inBasket
  end

end
