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
  end

  def remove_item(item)
    @inBasket.delete(item)
  end

  def empty
    @inBasket.clear
  end



end
